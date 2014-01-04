class MembersController < ApplicationController
<<<<<<< HEAD
  before_filter :set_title
  respond_to :html, :json
  before_action :set_sects
  layout 'sections'
  add_crumb('Members') {|instance| instance.members_path }
  
  @@SUBSECTION_REMAPS = {new: 'profile'}

  def index
  end 
  
  def new
    # @profile = Member.new
    @user = User.new
  end

  def update
    member = Member.find params[:id]
    # TODO: More robust permissions / failure
    raise "This action is not allowed" unless member == current_member

    # currently only working for the declaration.  will need to update it to also work for the skills form, etc.
    attributes = params.require(:member).permit(:given_name, :legal_name, :birth_country, :signed_declaration_at).merge(signed_declaration_at: Time.now)

    member.update_attributes!(attributes)

    respond_with member
  end
    
  def create
  end

  # new declaration form & newsletter signup
  def declaration
  end 

  # These newsletter methods would more properly be their own resource.
  def newsletter_create
    render json: {errors: []} # really it would be best to return the attributes of the created object.
  end

  protected

  # Mark for possible removal, trying to go with subsection in the new navinfo
  # struct to passdown all info to view/helpers
  def set_title
    @title = controller_name.titleize
    @section = @@SUBSECTION_REMAPS[action_name] || action_name
  end

  def set_sects
    set_title
    subsect = @@SUBSECTION_REMAPS[action_name] || action_name
    @sects = OpenStruct.new(slug: controller_name.gsub(' ', '-').downcase, section: controller_name.titleize, subslug: subsect.gsub(' ', '-').downcase, subsection: subsect.titleize)
  end
  
  def member_params
    params.require(:first_name, :last_name, :email_address, :password, :country ).permit(:middle_name, :password_confirm)
  end
end
