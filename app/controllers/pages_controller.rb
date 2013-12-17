class PagesController < ApplicationController
  before_filter :set_section
  layout 'sections'
  before_filter :authenticate_member!
  helper :exchange

  def locations
  end

  def index
    @path = Path.where(path: "/#{params[:path]}/").first || not_found
    @page_content = @path.page.primary_content.html_safe
  end

  def institute
  end

  def enter_new_earth
  end

  def exchange
  end

  def festival
  end
  

  protected

  def set_section
    @section = params[:section]
    
    case @section
    when "locations"
      @current_subsection = 'world map'
    when "institute"
      @current_subsection = 'learning portal'
    when "enter"
      @current_subsection = 'sovereignty'
    when 'exchange'
      @current_subsection = 'bank'
    when 'festival'
      @current_subsection = 'culture'
    end
      

    # Returns a titleized transform of the current action named for use with breadcrumbs. -JB
    #
    # Note: Would someone more familiar with the current use for @section check to see if the code 
    # below could be reused for that purpose also? Afterwards feel free to remove this note, thx! -JB
    @section_name = action_name.titleize
    add_crumb @section_name
  end
end