class PagesController < ApplicationController
  layout 'sections'
  before_filter :authenticate_member!
  helper :exchange
  include InstituteHelper

  def locations
  end

  def institute
    add_crumb params[:section], "/institute/#{params[:section]}" if params[:section].present?
    add_crumb params[:subsection], "/institute/#{params[:section]}/#{params[:subsection]}" if params[:subsection].present?

    @path = Path.where(path: "#{subsection_path}/").first || not_found
    @page = @path.pages.where(file_name: (params[:filename]||'index')+".html").first
    @page_content = @page.primary_content.html_safe

    add_crumb @page.page_title, "#{subsection_path}/#{@page.file_name}"

    @sidenav = institute_law_nav if params[:section] == 'law'
    @sidenav ||= []
  end

  def enter_new_earth
  end

  def exchange
  end

  def festival
  end
  

end
