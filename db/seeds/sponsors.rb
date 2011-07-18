if defined?(User)
  User.all.each do |user|
    if user.plugins.where(:name => 'sponsors').blank?
      user.plugins.create(:name => 'sponsors',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end

if defined?(Page)
  page = Page.create(
    :title => 'Sponsors',
    :link_url => '/sponsors',
    :deletable => false,
    :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
    :menu_match => '^/sponsors(\/|\/.+?|)$'
  )
  Page.default_parts.each do |default_page_part|
    page.parts.create(:title => default_page_part, :body => nil)
  end
end

#if these are in the seed file sponsorship_levels.rb
#   they don't get run with db:migrate
#but if you run db:seed again,
#   you create duplicate copies of the pages
#
#   Additionally, i had to rename the sponsors migration
#     So that it runs after the event_types table exists
SponsorshipLevel.create!(
  :name => 'Rocksteady',
  :desc => 'These are the sponsors who the events wouldn\'t be possible without.'
)

SponsorshipLevel.create!(
  :name => 'Toprocker',
  :desc => 'These are the sponsors that bring the flavor to the event.'
)

SponsorshipLevel.create!(
  :name => 'Uprocker',
  :desc => 'These are the sponsors helping out where they can to bring the art to everyone'
)