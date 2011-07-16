module Admin
  class EventsController < Admin::BaseController

    crudify :event,
            :title_attribute => 'name', :xhr_paging => true

    before_filter :load_event_types

    def load_event_types
      @event_types = EventType.all
    end
  end
end
