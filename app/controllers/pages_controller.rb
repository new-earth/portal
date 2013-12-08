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

    # Returns a titleized transform of the current action named for use with breadcrumbs. -JB
    #
    # Note: Would someone more familiar with the current use for @section check to see if the code 
    # below could be reused for that purpose also? Afterwards feel free to remove this note, thx! -JB
    @section_name = action_name.titleize
    add_crumb @section_name
  end
end