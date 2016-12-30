module AuthenticationHelpers
    def sign_in_as!(user)
        visit '/login'
        fill_in "Email", :with => "test@example.com"
        fill_in "Password", :with => "spree123"
        click_button "Login"
        page.should have_content("Logged in successfully")
    end

    def fill_in_gtm_id
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
