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

Sponsor.create!(
  :name => 'Nike',
  :twitter => '@nike',
  :pic => Image.create(:image => File.new(Rails.root.join('public','images','sponsors','nike.jpg').to_s)),
  :desc => 'Nike Shoes - Just Do It.',
  :visible => true
)

Sponsor.create!(
  :name => 'Puma',
  :twitter => '@puma',
  :pic => Image.create(:image => File.new(Rails.root.join('public','images','sponsors','puma.jpg').to_s)),
  :desc => 'Get Some Puma\'s.',
  :visible => true
)


Sponsor.create!(
  :name => 'Adidas',
  :twitter => '@adidas',
  :pic => Image.create(:image => File.new(Rails.root.join('public','images','sponsors','adidas.jpg').to_s)),
  :desc => 'All Day I Dream About Swipes.',
  :visible => true
)

Sponsor.create!(
  :name => 'Technics',
  :twitter => '@technics',
  :pic => Image.create(:image => File.new(Rails.root.join('public','images','sponsors','technics.jpg').to_s)),
  :desc => 'The only real wheels of steel.',
  :visible => true
)

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