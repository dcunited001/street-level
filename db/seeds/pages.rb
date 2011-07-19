page_position = -1


home_page = Page.create(:title => "Home",
            :deletable => false,
            :link_url => "/",
            :position => (page_position += 1))
home_page.parts.create({
              :title => "Body",
              :body => "<p>Street Level is a community site built with Rails and Refinery where b-boys can watch the latest videos.  Dancers can also find information about upcoming events and learn about the sponsors that make it all happen.  </p>",
              :position => 0
            })
home_page.parts.create({
              :title => "Side Body",
              :body => "<p>This is another block of content over here.</p>",
              :position => 1
            })
home_page.parts.create({
              :title => "Pic",
              :body => "<img src='/images/bboys_small.jpg' width=198 height=188 />",
              :position => 2
            })

home_page_position = -1
page_not_found_page = home_page.children.create(:title => "Page not found",
            :menu_match => "^/404$",
            :show_in_menu => false,
            :deletable => false,
            :position => (home_page_position += 1))
page_not_found_page.parts.create({
              :title => "Body",
              :body => "<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href='/'>Return to the home page</a></p>",
              :position => 0
            })

about_us_page = Page.create(:title => "About Me",
            :deletable => true,
            :position => (page_position += 1))
about_us_page.parts.create({
              :title => "Body",
              :body => "<p>My name is David Conner and I'm a Rails developer from Virginia.  I'm beginning to work solely with the framework, which is exciting because I love it.  I've been working with Ruby and Rails for about 3 years, this is a demo site that I put together recently to demonstrate my skills with Refinery CMS.  </p>",
              :position => 0
            })
about_us_page.parts.create({
              :title => "Side Body",
              :body => "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p>",
              :position => 1
            })
about_us_page.parts.create({
              :title => "Pic",
              :body => "<img src='/images/small_flare.jpg' width=198 height=188 />",
              :position => 2
            })
