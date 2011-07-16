Factory.define(:event_sponsorship, :class => 'EventSponsorship') do |es|
  es.event { |r| r.association(:event) }
  es.sponsor { |r| r.association(:sponsor) }
  es.active true
end

Factory.define(:inactive_event_sponsorship, :parent => :event_sponsorship) do |es|
  es.active false
end