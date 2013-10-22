class UsersController < ApplicationController
  before_filter :set_title
  
  def index
    @section = 'index'
  end
  
  def sovereignty_declaration
    @section = "sovereignty_declaration"
  end
  
  def newsletter
    @section = 'newsletter'
  end
  
  def profile
    @section = 'profile'
  end
  
  protected
  
  def set_title
    @title = 'users'
  end
end
