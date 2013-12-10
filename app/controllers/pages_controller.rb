class PagesController < ApplicationController
  before_filter :set_section
  layout 'new_one'

  def locations
  end
  
  def institute
  end

  def enter_new_earth
  end

  def bank_exchange
  end

  def festival
  end
  

  protected

  def set_section
    @section = params[:section]
  end
end