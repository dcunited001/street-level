if defined?(User)
  User.all.each do |user|
    if user.plugins.where(:name => 'events').blank?
      user.plugins.create(:name => 'events',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end

if defined?(Page)
  page = Page.create(
    :title => 'Events',
    :link_url => '/events',
    :deletable => false,
    :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
    :menu_match => '^/events(\/|\/.+?|)$'
  )
  Page.default_parts.each do |default_page_part|
    page.parts.create(:title => default_page_part, :body => nil)
  end
end

#if these are in the seed file event_types.rb
#   they don't get run with db:migrate
#but if you run db:seed again,
#   you create duplicate copies of the pages
#
#   Additionally, i had to rename the events migration
#     So that it runs after the event_types table exists
EventType.create!(
  :name => '1 on 1 BBoy Jam',
  :desc => 'Two BBoys enter, one BBoy leaves.'
)

EventType.create!(
  :name => '2 on 2 BBoy Jam',
  :desc => 'In these events, it\'s creative doubles sets that will take the cash home.'
)

EventType.create!(
  :name => 'Bonnie and Clyde BBoy Jam',
  :desc => 'This is another kind of two on two with one girl and one guy on each team.'
)

EventType.create!(
  :name => 'Battle of the Year Qualifier',
  :desc => 'Winning this event will qualify your crew for battle of the year.'
)

EventType.create!(
  :name => 'Pop and Lock Battle',
  :desc => 'This is an event where Poplockers get together and battle.'
)

EventType.create!(
  :name => 'BBoy Cypher',
  :desc => 'Just a cypher.  This is where BBoys get together and give and take, but not bite.'
)



#Some Sample Events