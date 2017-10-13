class Admin::ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout 'admin/application'
  before_action :validate_session
  before_action :set_bredcrumb

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

  def set_bredcrumb
    set_group_home_breadcrumb
  end

  def set_group_home_breadcrumb
    push_to_breadcrumb({ title: "All groups", link: groups_path })
  end

  def push_to_breadcrumb(hash)
    initialize_breadcrumb
    @breadcrumb << hash
  end

  def initialize_breadcrumb
    @breadcrumb ||= []
  end

  helper_method :current_user
end
