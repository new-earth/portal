class UsersController < ApplicationController
  layout "application_no_header"
  
  def index
  end
  
  def sovereignty_form
    render 'sovereignty_form'
  end
end
