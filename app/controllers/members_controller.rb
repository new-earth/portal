class MembersController < ApplicationController
  before_filter :set_title
  add_crumb('Members') {|instance| instance.members_path }
  
  # new declaration form & newsletter signup
  def declaration
    @section = "declaration"
  end  
  
  def new
    @section = 'profile'
    # @profile = Member.new
    @user = User.new
  end
    
  def create
  end
  
  def index
    @section = 'index'
  end

  # These newsletter methods would more properly be their own resource.
  def newsletter_create
    render json: {errors: []} # really it would be best to return the attributes of the created object.
  end

  protected

  def set_title
    @title = 'members'
  end
  
  def member_params
    params.require(:first_name, :last_name, :email_address, :password, :country ).permit(:middle_name, :password_confirm)
  end
end
