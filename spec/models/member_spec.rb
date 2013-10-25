require 'spec_helper'

describe Intranet::Member do
  it { should have_one(:user) }
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:email_address) }
  it { should validate_uniqueness_of(:email_address) }
  
  context "empty database" do
    before(:each) do
      Intranet::Member.delete_all
      Intranet::User.delete_all
    end
    
    describe 'saves valid attributes' do
      let(:mem) { Intranet::Member.new( first_name: 'Jane', last_name: "Do", email_address: 'feh@feh.com', country: 'ca') }
      specify { mem.save!.should == true }
    end
  end
end