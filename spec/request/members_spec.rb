require 'spec_helper'

describe 'Members Page' do
  describe "GET /members/sovereignty_declaration" do
    before(:each) do
      @title = 'members'
      visit '/members/sovereignty_declaration'
    end
    
    it "render success" do
      expect(page.status_code).to be(200)
    end
    
    it "has a h5 declaration heading" do 
      expect(page).to have_selector '.h5', text:'Make your Declaration'  
    end
    
    it "has full_name text field" do 
      expect(page).to have_selector 'input#full_name' 
    end  

    it "has date text field" do 
      expect(page).to have_selector 'input#date' 
    end  

    it "has newsletter_subscribe_form div id" do
      expect(page).to have_selector 'div#newsletter_subscribe_form'
    end
        
  end
end