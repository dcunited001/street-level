Factory.define(:sponsor, :class => 'Sponsor') do |sponsor|
  sponsor.sequence(:name) { |n| "Sponsor #{n}" }
  sponsor.sequence(:twitter) { |n| "@sponsor#{n}" }
  sponsor.desc { lorem(100) }
  sponsor.visible true
end

Factory.define(:hidden_sponsor, :parent => :sponsor) do |sponsor|
  sponsor.visible false
end