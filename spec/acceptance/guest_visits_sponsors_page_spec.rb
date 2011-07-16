require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'Guest visits sponsors page' do
  before do
    @sponsor_one = Factory(:sponsor)
    @sponsor_two = Factory(:sponsor)
    @hidden_sponsor = Factory(:hidden_sponsor)
  end

  scenario 'starting from the home page' do
    visit homepage
    click_link 'Sponsors'

    within '.sponsors-list' do
      page.should have_content @sponsor_one.name
      page.should have_content @sponsor_two.name
      page.should_not have_content @hidden_sponsor.name
    end
  end
end