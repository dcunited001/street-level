require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'Guest visits videos page' do
  before do
    @video_one = Factory(:video)
    @video_two = Factory(:video)
  end

  context 'starting from the home page, they click videos' do
    before do
      visit homepage
      click_link 'Videos'
    end

    scenario 'and they should see a list of videos' do
      within '.videos-list' do
        page.should have_content @video_one.name
        page.should have_content @video_two.name
      end
    end

    context 'they can click a video' do
      before do
        click_link @video_one.name
      end

      scenario 'and they should see video details' do
        within '.video-details' do
          page.should have_content @video_one.name
          page.should have_content @video_one.desc
          page.should_not have_content @video_two.name
        end
      end
    end

  end

end