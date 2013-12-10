class PagesController < ApplicationController
  before_filter :set_section
  layout 'new_one'

  def locations
    # render :layout => "new_one"
  end
  
  def institute
    # render :layout => "new_one"
  end

  def enter_new_earth
    # render :layout => "new_one"
  end

  def bank_exchange
    # render :layout => "new_one"
  end

  def festival
    # render :layout => "new_one"
  end
  

  protected

  def set_section
    @section = params[:section]
  end
end