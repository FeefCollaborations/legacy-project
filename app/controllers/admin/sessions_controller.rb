class Admin::SessionsController < Admin::ApplicationController
  skip_before_action :validate_session, only: [ :new, :create ]

  def new
  end

  def create
  end

  def destroy
    reset_user_session
    redirect_to root_path
  end

  private

  def reset_user_session
    session['user_id'] = nil
    session['email'] = nil
  end
end