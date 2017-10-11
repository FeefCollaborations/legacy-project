class Admin::ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout 'admin/application'
  before_action :validate_session


  private

  def validate_session
    if !current_user
      redirect_to '/auth/google_oauth2', alert: "Please login"
    end
  end

  def current_user
    User.find_by_id(session['user_id'])
  end
end
