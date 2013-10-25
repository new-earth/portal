class MembersController < ApplicationController
  before_filter :set_title
  @use_pry = true
  
  def index
    @section = 'index'
  end
  
  def create
    user = Intranet::User.new()
    binding.pry if pry
    Intranet::Member.create(member_params)
  end
  
  def sovereignty_declaration
    @section = "declaration"
  end
  
  def edit_profile
    @section = 'profile'
  end
  
  
  protected
  def set_title
    @title ||= 'members'
  end
  
  private
  def pry
    return @use_pry.blank? ? true : false
  end
  
  def member_params
    params.require(:first_name, :last_name, :email_address, :password, :country )
    params.require.permit(:middle_name, :password_confirm)
  end
end
