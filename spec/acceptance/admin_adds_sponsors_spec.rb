require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'Admin visits sponsors admin page' do
  before do
    @admin = Factory(:admin)

    @sponsor_one = Factory(:sponsor)
    @sponsor_two = Factory(:sponsor)
    @hidden_sponsor = Factory(:hidden_sponsor)
  end

  context 'starting from the admin interface' do
    before do
      login_as(@admin)

      visit admin_interface

      click_link 'Dashboard'
      Capybara.save_and_open_page
      click_link 'Events'
    end

    scenario 'they should see list of all sponsors' do

    end

    context 'then they click to add a new sponsor' do
      before do

      end

      scenario 'and they should be able to add a new sponsor' do

      end
    end
  end
end