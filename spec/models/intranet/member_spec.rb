# Until we work out how to have a test intranet db, this will access the actual intranet db, which is not what we want.
# We want a test db which is empty but has the intranet db schema.


# require 'spec_helper'

# describe Intranet::Member do
#   it { should have_one(:user) }
#   it { should validate_presence_of(:first_name) }
#   it { should validate_presence_of(:email_address) }
#   it { should validate_uniqueness_of(:email_address) }
  
#   context "empty database" do
    
#     describe 'saves valid attributes' do
#       let(:member) { Intranet::Member.new( first_name: 'Jane', last_name: "Do", email_address: 'feh@feh.com', country: 'ca') }
#       specify { member.save!.should == true }
#     end
#   end
# end