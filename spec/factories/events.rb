Factory.define(:event, :class => 'Event') do |e|
  e.sequence(:name) { |n| "BBoy Event #{n}" }
  e.event_type { |r| r.association(:event_type) }
  e.visible true
end

Factory.define(:hidden_event, :parent => :event) do |e|
  e.visible false
end