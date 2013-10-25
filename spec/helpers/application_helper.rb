require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the ApplicationHelper. For example:
#
# describe ApplicationHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe ApplicationHelper do

  describe "page_title" do

    context "without existing @title" do
      
      it "returns default value" do
        expect(helper.page_title).to eq 'Comments Dashboard'
      end
      
    end
    
    context "with existing @title" do

      before(:each) do
        @title = 'Chunky Bacon'
      end

      it "uses instance variable as title" do
        expect(helper.page_title).to eq 'Chunky Bacon Comments'
      end
      
    end
    
  end

end