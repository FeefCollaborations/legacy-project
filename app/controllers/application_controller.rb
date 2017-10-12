class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_group
    @group
  end

  helper_method :current_group

end
