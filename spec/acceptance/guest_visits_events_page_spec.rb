require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'Guest visits events page' do
  before do
    @event_one = Factory(:event)
    @event_two = Factory(:event)
    @hidden_event = Factory(:hidden_event)
  end

  context 'starting from the home page, they click events' do

    before do
      visit homepage
      click_link 'Events'
    end

    scenario 'and they should see a list of events' do
      within '.events-list' do
        page.should have_content(@event_one.name)
        page.should have_content(@event_two.name)
        page.should_not have_content(@hidden_event.name)
      end
    end

    context 'then they click an event link' do
      before do
        click_link @event_one.name
      end

      scenario 'and they should see event details' do
        within '.event-details' do
          page.should have_content @event_one.name
          page.should have_content @event_one.desc
          page.should_not have_content @event_two.name
        end
      end
    end

  end

end