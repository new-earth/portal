require 'spec_helper'

describe 'Members Page' do
  describe "GET /members" do
    
    it "render success" do
      visit '/members/sovereignty_declaration'
      expect(page.status_code).to be(200)
    end
  end
end