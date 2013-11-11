# see member_spec comments

# require 'spec_helper'
 
# describe 'User' do    
#   before(:each) do
#     Intranet::Member.delete_all
#     Intranet::User.delete_all
#   end

#   let(:mem) { Intranet::Member.new( first_name: 'Jer', last_name: "Will",
#       email_address: 'feh@feh.com', country: 'ca') }
  
#   let(:user) { Intranet::User.new( username: 'jer', password: 'testtttt', member: mem )}
  
#   it "saves attributes with nested member" do
#     mem.save!
#     expect(mem).to be_valid
  
#     user.save!
#     expect(user).to be_valid
#     expect(user.member_id).to eq( mem.id )
#   end
# end