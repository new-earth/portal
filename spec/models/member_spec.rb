require 'spec_helper'

describe 'User' do
  
  before(:each) do
    Intranet::Member.delete_all
  end
  
  it "saves attributes" do
    mem = Intranet::Member.create!({ 
      first_name: 'Jeremy', 
      last_name: "Will",
      email_address: 'feh@feh.com', 
      country: 'ca'})
    expect(mem).to be_valid
  end
end