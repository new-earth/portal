class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  add_crumb "<i class='icon-home'></i>".html_safe, '/'

  protect_from_forgery with: :exception
  before_filter :set_section

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

  protected

  def set_section
    @section = action_name.dasherize
    @section_name = action_name.titleize.downcase
    add_crumb @section_name, request.path.split('/')[0..1].join('/')

    # case @section
    # when "locations"
    #   @current_subsection = 'world map'
    # when "institute"
    #   @current_subsection = 'learning portal'
    # when "enter"
    #   @current_subsection = 'sovereignty'
    # when 'exchange'
    #   @current_subsection = ''
    # when 'festival'
    #   @current_subsection = 'culture'
    # end
  end
end
