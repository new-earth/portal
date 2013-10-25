require 'spec_helper'

describe 'Newsletter Subscribe Partial' do
  describe "GET /members/sovereignty_declaration" do
    
    before(:each) do
      @title = 'members'
      visit '/members/sovereignty_declaration'
    end
    
    it "render success" do
      expect(page.status_code).to be(200)
    end
    
    it "has correct newsletter signup label text" do 
      expect(page).to have_selector 'label', 
        text:'Sign up to our newsletter system by filling out the form below:'  
    end
    
    it "have newsletter subscribe email field" do 
      expect(page).to have_selector 'input#newsletter_email' 
    end
    
    it "have newsletter subscribe button" do 
      expect(page).to have_selector '#newsletter_subscribe_btn' 
    end

    it "have newsletter skip button" do 
      expect(page).to have_selector '#newsletter_skip_btn' 
    end
        
  end
end