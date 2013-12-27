class PagesController < ApplicationController
  layout 'sections'
  helper :exchange
  #before_action :authenticate_member!
  before_action :set_sects

  @@SECTIONS = ['locations', 'enter', 'institute', 'exchange', 'festival']
  @@SECTION_REMAPS = {enter: 'enter new earth'}

  def index
    @path = Path.where(path: "/#{params[:path]}/").first || not_found
    @page_content = @path.page.primary_content.html_safe
  end

  def locations
  end

  def institute
  end

  def enter
  end

  def exchange
  end

  def festival
  end

  protected

  def set_sects
    set_section

    section = @@SECTION_REMAPS[action_name] || action_name
    @sects = OpenStruct.new(slug: action_name.gsub(' ', '-').downcase, section: section.titleize, subslug: nil, subsection: nil)
    add_crumb @sects.section
  end

  def set_section
    @section = params[:section]
  end
  
end