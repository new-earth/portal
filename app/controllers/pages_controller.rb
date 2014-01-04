class PagesController < ApplicationController
  layout 'sections'
  before_filter :authenticate_member!, only: [:institute]
  include InstituteHelper
  helper :exchange
  before_action :set_sects

  @@SECTIONS = ['locations', 'enter', 'institute', 'exchange', 'festival']
  @@SECTION_REMAPS = {enter: 'enter new earth'}

  def locations_pages
    @section = "locations"
    @subsection = params[:subsection]
  end

  def locations
  end

  def institute
    add_crumb params[:section], "/institute/#{params[:section]}" if params[:section].present?
    add_crumb params[:subsection], "/institute/#{params[:section]}/#{params[:subsection]}" if params[:subsection].present?

    @path = Path.where(path: "#{subsection_path}/").first || not_found
    @page = @path.pages.where(file_name: (params[:filename]||'index')+".html").first
    @page_content = @page.primary_content.html_safe

    add_crumb @page.page_title.downcase, "#{subsection_path}/#{@page.file_name}"

    @sidenav = case params[:section]
      when 'law' then 
        InstituteHelper.institute_law_nav
      when 'wellness' then
        parse_nav_content Content.where(name: "InstituteWellnessLeftNav").first
        # JSON.parse(Content.where(name: "InstituteWellnessLeftNav").first.body, symbolize_names: true)
      else
        []
      end
  end

<<<<<<< HEAD
  def enter_new_earth
    @page_contents = PageContent.where(section: @section)
  end

  def exchange
    @page_contents = PageContent.where(section: @section)
    # @content = ExchangeHelper.exchange_content
=======
  def enter
  end

  def exchange
>>>>>>> 7753d62186f8ca92789d7f531ce138e67db48133
  end

  def festival
    # @content = FestivalHelper.festival_content
    @page_contents = PageContent.where(section: @section)
    render 'general_accordion'
  end
<<<<<<< HEAD
end
=======

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
>>>>>>> 7753d62186f8ca92789d7f531ce138e67db48133
