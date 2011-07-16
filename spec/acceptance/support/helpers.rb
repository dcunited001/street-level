module HelperMethods
  # Put helper methods you need to be available in all tests here.

  def login_as(user)
    visit "/users/login"

    within '#user_new' do
      fill_in("user[login]", :with => user.username)
      fill_in("user[password]", :with => 'password')
      click_button("Sign in")
    end
  end

  def logout
    visit "/users/logout"
  end
end

RSpec.configuration.include HelperMethods, :type => :acceptance