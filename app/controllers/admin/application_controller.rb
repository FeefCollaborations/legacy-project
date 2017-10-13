class Admin::ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout 'admin/application'
  before_action :validate_session


  private

  def validate_session
    if !current_user
      redirect_to new_session_path, alert: "Please login"
    end
  end

  def current_user
    @current_user ||= compute_current_user
  end

  def compute_current_user
    email = session['email']
    id = session['user_id']
    User.find_by(email: email, id: id)
  end

  helper_method :current_user
end
