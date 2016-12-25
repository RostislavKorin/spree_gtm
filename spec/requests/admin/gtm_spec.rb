require 'spec_helper'

describe "GTM spree extension" do
  context "value set in controller " do
    it "should render google tag" do
      user = create(:admin_user, :email => "test@example.com", :password => "spree123")
      sign_in_as!(user)
      visit spree.admin_path
      click_link "Configurations"
      click_link "Google Tag Manager"
      fill_in('Gtm accountid', :with => 'bag')
      click_button "Save"
      page.should have_content("Gtm has been successfully")
    end
  end
end
