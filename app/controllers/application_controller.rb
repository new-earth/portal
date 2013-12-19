class ApplicationController < ActionController::Base
  layout 'new_one'
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  add_crumb "<i class='icon-home'></i>".html_safe, '/'

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
end
