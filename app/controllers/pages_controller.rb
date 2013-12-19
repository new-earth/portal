class PagesController < ApplicationController
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
  

end
