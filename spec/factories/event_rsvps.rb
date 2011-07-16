Factory.define(:event_rsvp, :class => 'EventRsvp') do |er|
  er.user { |r| r.association(:user) }
  er.event { |r| r.association(:event) }
  er.attending true
end

Factory.define(:event_rsvp_not_attending, :parent => :event_rsvp) do |er|
    er.attending false
end