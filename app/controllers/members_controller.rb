class MembersController < ApplicationController
  before_filter :set_title
  # add_crumb('Members') {|instance| instance.members_path }
  respond_to :html, :json

  def update
    member = Member.find params[:id]
    # TODO: More robust permissions / failure
    raise "This action is not allowed" unless member == current_member

    # currently only working for the declaration.  will need to update it to also work for the skills form, etc.
    attributes = params.require(:member).permit(:given_name, :legal_name, :birth_country, :signed_declaration_at).merge(signed_declaration_at: Time.now)

    member.update_attributes!(attributes)

    respond_with member
  end

  # def new
  #   @section = 'profile'
  #   # @profile = Member.new
  #   @user = User.new
  # end
    
  # def create
  # end
  
  # def index
  #   @section = 'index'
  # end

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
