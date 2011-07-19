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
one_on_one = EventType.create!(
  :name => '1 on 1 BBoy Jam',
  :desc => 'Two BBoys enter, one BBoy leaves.'
)

two_on_two = EventType.create!(
  :name => '2 on 2 BBoy Jam',
  :desc => 'In these events, it\'s creative doubles sets that will take the cash home.'
)

bonnie_and_clyde = EventType.create!(
  :name => 'Bonnie and Clyde BBoy Jam',
  :desc => 'This is another kind of two on two with one girl and one guy on each team.'
)

boty = EventType.create!(
  :name => 'Battle of the Year Qualifier',
  :desc => 'Winning this event will qualify your crew for battle of the year.'
)

pop_and_lock = EventType.create!(
  :name => 'Pop and Lock Battle',
  :desc => 'This is an event where Poplockers get together and battle.'
)

cypher = EventType.create!(
  :name => 'BBoy Cypher',
  :desc => 'Just a cypher.  This is where BBoys get together and give and take, but not bite.'
)



#Some Sample Events
today = Date.today

#past events
Event.create!(
  :name => 'Evolution Atlanta',
  :desc => 'One on one competition Lorem ipsum iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.',
  :event_type => one_on_one,
  :start => (Date.today - 14) + 14.hours,
  :end => (Date.today - 14) + 26.hours,
  :pic => Image.create!(:image => File.new(Rails.root.join('public','images','events','evolution-atlanta.jpeg').to_s)),
  :visible => true
)

Event.create!(
  :name => 'Battle of the Year Canada Qualifier',
  :desc => 'One on one competition Lorem ipsum iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.',
  :event_type => boty,
  :start => (Date.today - 12) + 15.hours,
  :end => (Date.today - 12) + 27.hours,
  :pic => Image.create!(:image => File.new(Rails.root.join('public','images','events','boty-canada.jpg').to_s)),
  :visible => true
)

Event.create!(
  :name => 'Evolution',
  :desc => 'One on one competition Lorem ipsum iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.',
  :event_type => one_on_one,
  :start => (Date.today - 10) + 14.hours,
  :end => (Date.today - 10) + 26.hours,
  :pic => Image.create!(:image => File.new(Rails.root.join('public','images','events','evolution-atlanta.jpeg').to_s)),
  :visible => true
)

Event.create!(
  :name => 'Lover\'s Rock',
  :desc => 'Bonnie and Clyde competition Lorem ipsum iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.',
  :event_type => bonnie_and_clyde,
  :start => (Date.today - 7) + 14.hours,
  :end => (Date.today - 7) + 26.hours,
  :pic => Image.create!(:image => File.new(Rails.root.join('public','images','events','Lovers-rock.jpg').to_s)),
  :visible => true
)

Event.create!(
  :name => 'Cypher One',
  :desc => 'Weekly BBoy Cypher competition Lorem ipsum iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.',
  :event_type => cypher,
  :start => (Date.today - 8) + 14.hours,
  :end => (Date.today - 8) + 26.hours,
  :pic => Image.create!(:image => File.new(Rails.root.join('public','images','events','bboy-cypher.jpg').to_s)),
  :visible => true
)


Event.create!(
  :name => 'Cypher Two',
  :desc => 'Weekly BBoy Cypher Lorem ipsum iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.',
  :event_type => cypher,
  :start => (Date.today - 1) + 14.hours,
  :end => (Date.today - 1) + 26.hours,
  :pic => Image.create!(:image => File.new(Rails.root.join('public','images','events','bboy-cypher.jpg').to_s)),
  :visible => true
)





#future events
Event.create!(
  :name => 'Cypher Three',
  :desc => 'Weekly BBoy Cypher Lorem ipsum iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.',
  :event_type => cypher,
  :start => (Date.today + 6) + 14.hours,
  :end => (Date.today + 6) + 26.hours,
  :pic => Image.create!(:image => File.new(Rails.root.join('public','images','events','bboy-cypher.jpg').to_s)),
  :visible => true
)

Event.create!(
  :name => 'Evolution Germany',
  :desc => 'One on one competition Lorem ipsum iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.',
  :event_type => two_on_two,
  :start => (Date.today + 7) + 14.hours,
  :end => (Date.today + 7) + 26.hours,
  :pic => Image.create!(:image => File.new(Rails.root.join('public','images','events','evolution-atlanta.jpeg').to_s)),
  :visible => true
)


Event.create!(
  :name => 'Evolution Korea',
  :desc => 'One on one competition Lorem ipsum iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.',
  :event_type => one_on_one,
  :start => (Date.today + 14) + 14.hours,
  :end => (Date.today + 14) + 26.hours,
  :pic => Image.create!(:image => File.new(Rails.root.join('public','images','events','evolution-atlanta.jpeg').to_s)),
  :visible => true
)


Event.create!(
  :name => 'Only Pop and Lock',
  :desc => 'Pop and Lock competition Lorem ipsum iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.',
  :event_type => pop_and_lock,
  :start => (Date.today + 14) + 14.hours,
  :end => (Date.today + 14) + 26.hours,
  :pic => Image.create!(:image => File.new(Rails.root.join('public','images','events','evolution-atlanta.jpeg').to_s)),
  :visible => true
)

