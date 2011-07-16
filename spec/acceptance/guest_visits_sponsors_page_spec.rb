require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'Guest visits sponsors page' do
  before do
    @sponsor_one = Factory(:sponsor)
    @sponsor_two = Factory(:sponsor)
    @hidden_sponsor = Factory(:hidden_sponsor)
  end

  context 'starting from the home page, they click sponsors' do
    before do
      visit homepage
      click_link 'Sponsors'
    end

    scenario 'and they should see a list of sponsors' do
      within '.sponsors-list' do
        page.should have_content @sponsor_one.name
        page.should have_content @sponsor_two.name
        page.should_not have_content @hidden_sponsor.name
      end
    end

    context 'then they click a sponsor link' do
      before do
        click_link @sponsor_one.name
      end

      scenario 'and they should see sponsor details' do
        within '.sponsor-details' do
          page.should have_content @sponsor_one.name
          page.should have_content @sponsor_one.desc
          page.should_not have_content @sponsor_two.name
        end
      end

    end

  end

end