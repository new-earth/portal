class MembersController < ApplicationController
  before_filter :set_title
  
  def index
    @section = 'index'
  end
  
  def sovereignty_declaration
    @section = "declare"
  end
  
  def newsletter
    @section = 'newsletter'
  end
  
  def edit_profile
    @section = 'profile'
  end
  
  protected
  
  def set_title
    @title = 'members'
  end
end
