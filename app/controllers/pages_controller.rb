class PagesController < ApplicationController
  layout 'sections'
  before_filter :authenticate_member!
  helper :exchange

  def locations
  end

  def locations_pages
    @section = "locations"
    @subsection = params[:subsection]
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
        JSON.parse(Content.where(name: "InstituteWellnessLeftNav").first.body, symbolize_names: true)
      else
        []
      end
  end

  def enter_new_earth
  end

  def exchange
    @content = ExchangeHelper.exchange_content
    render 'general_accordion'
  end

  def festival
    @content = FestivalHelper.festival_content
    render 'general_accordion'
  end
end
