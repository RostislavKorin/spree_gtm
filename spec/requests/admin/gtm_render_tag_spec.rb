require 'spec_helper'

describe "GTM value set in controller" do
  context "value set in controller " do
    it "should render tag" do
      user = create(:admin_user, :email => "test@example.com", :password => "spree123")
      sign_in_as!(user)
      visit spree.admin_path
      click_link "Configurations"
      click_link "Google Tag Manager"
      fill_in('Gtm accountid', :with => 'bag')
      click_button "Save"
      page.should have_content("Gtm has been successfully")
      visit ('/')
      page.all('body script', visible: false).each do |script|
        script.text == "dataLayer, bag"
      end
    end
  end
end
