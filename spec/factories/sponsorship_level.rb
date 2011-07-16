Factory.define(:sposnorship_level, :class => 'SponsorshipLevel') do |level|
  level.sequence(:name) { |n| "Sponsorship Level #{n}" }
  level.desc { lorem(20) }
end