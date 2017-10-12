class CallbacksController < ApplicationController

  # Just use for login purpose
  # TODO: Add an extra layer of validating the token.
  # this is basically signin

  def google
    @user = User.find_by_email(email)
    if @user
      set_user_session
      redirect_to groups_path, notice: "Signed in successfully!"
    else
      render text: 'There were issues with login!'
    end
  end

  private

  def email
    request.env['omniauth.auth'].info.email
  end

  def set_user_session
    session['user_id'] = @user.id
  end

end