require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'Admin visits events admin page' do
  before do
    @admin = Factory(:admin)

    @event_one = Factory(:event)
    @event_two = Factory(:event)
    @hidden_event = Factory(:hidden_event)
  end

  scenario 'starting from the admin interface' do
    login_as(@admin)
    click_link 'Events'

    within '#records' do
      page.should have_content @event_one.name
      page.should have_content @event_two.name

      #page should still show hidden events in the admin interface
      page.should have_content @hidden_event.name
    end
  end
end