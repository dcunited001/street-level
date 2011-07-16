Factory.define(:event_type, :class => 'EventType') do |event_type|
  event_type.sequence(:name) { |n| "EventType #{n}" }
  event_type.desc { lorem(20) }
end