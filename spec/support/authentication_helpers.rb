module AuthenticationHelpers
    def sign_in_as!(user)
        visit '/login'
        fill_in "Email", :with => "test@example.com"
        fill_in "Password", :with => "spree123"
        click_button "Login"
        page.should have_content("Logged in successfully")
    end
end
