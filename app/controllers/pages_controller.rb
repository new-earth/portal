class PagesController < ApplicationController
  before_filter :set_section

  def enter_new_earth
    
  end

  def institute
    
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