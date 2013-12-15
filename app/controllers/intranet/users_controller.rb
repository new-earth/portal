class UsersController < ApplicationController

  def create
    User.create(user_params)
  end
  
  def sovereignty_declaration
    @section = "declaration"
  end
  
  def newsletter
    @section = 'newsletter'
  end
  
  def edit_profile
    @section = 'profile'
  end
  
  
  private

  def user_params
    # params.require(:username, :password)
    # params.require(:member_attributes: [ :first_name, :last_name, :email_address, :country ])
    params.permit(member_attributes: [ :middle_name, :skills, :passions ])
  end
end