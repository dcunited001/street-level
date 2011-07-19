if defined?(User)
  User.all.each do |user|
    if user.plugins.where(:name => 'videos').blank?
      user.plugins.create(:name => 'videos',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end

if defined?(Page)
  page = Page.create(
    :title => 'Videos',
    :link_url => '/videos',
    :deletable => false,
    :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
    :menu_match => '^/videos(\/|\/.+?|)$'
  )
  Page.default_parts.each do |default_page_part|
    page.parts.create(:title => default_page_part, :body => nil)
  end
end


Video.create!(
    :name => 'Lilou vs Hong 10',
    :desc => 'Lorem ipsum iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.',
    :url => 'http://www.youtube.com/embed/JKQ83Bo9g3s'
)

Video.create!(
    :name => 'Junior Highlights',
    :desc => 'Lorem ipsum smaller longer text iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.',
    :url => 'http://www.youtube.com/embed/p822wR_neug'
)

