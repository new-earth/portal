require 'spec_helper'

describe 'User' do
  
  before(:each) do
    Intranet::Member.delete_all
    Intranet::User.delete_all
  end
  
  it "saves attributes with nested member" do
    mem = Intranet::Member.create!({ first_name: 'Jeremy', last_name: "Will",
      email_address: 'feh@feh.com', country: 'ca'})
    expect(mem).to be_valid
    
    user = Intranet::User.create!({ username: 'jer', password: 'testtttt', member: mem })
    
    expect(user).to be_valid
  end
end