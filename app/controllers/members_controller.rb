class MembersController < ApplicationController
  before_filter :set_title
  
  # new declaration form & newsletter signup
  def declaration
    @section = "declaration"
  end  
  
  def new
    @section = 'profile'
    @profile = Intranet::Member.new
    
    render 'new_profile'
  end
    
  def create
  end
  
  def index
    @section = 'index'
  end

   
  protected
  def set_title
    @title = 'members'
  end
  
  private

  def member_params
    params.require(:first_name, :last_name, :email_address, :password, :country ).permit(:middle_name, :password_confirm)
  end
end
