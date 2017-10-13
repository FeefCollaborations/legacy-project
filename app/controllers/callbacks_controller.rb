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
      redirect_to new_session_path, alert: "Please login with some other email!"
    end
  end

  private

  def email
    request.env['omniauth.auth'].info.email
  end

  def set_user_session
    session['user_id'] = @user.id
    session['email'] = @user.email
  end

end