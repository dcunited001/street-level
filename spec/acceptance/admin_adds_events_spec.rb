require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'Admin visits events admin page.' do
  before do
    @admin = Factory(:admin)

    @event_type = Factory(:event_type)

    @event_one = Factory(:event)
    @event_two = Factory(:event)
    @hidden_event = Factory(:hidden_event)
  end

  context 'Starting from the admin interface' do
    before do
      login_as(@admin)

      visit admin_interface
      click_link 'Videos'
    end

    scenario 'they should see a list of all events' do
      within '#records' do
        page.should have_content @event_one.name
        page.should have_content @event_two.name
        page.should have_content @hidden_event.name #this page should still show hidden
      end
    end

    context 'then they click to add a new event' do
      before do

      end

      scenario 'and they should be able to add an event' do

      end
    end

  end

end