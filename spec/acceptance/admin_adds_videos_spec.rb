require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'Admin visits videos admin page' do
  before do
    @admin = Factory(:admin)

    @video_one = Factory(:video)
    @video_two = Factory(:video)

  end

  context 'starting from the admin interface' do
    before do
      login_as(@admin)

      visit admin_interface
      click_link 'Videos'
    end

    scenario 'they should see list of all videos' do

    end

    context 'then they click to add a new video' do
      before do

      end

      scenario 'and they should be able to add a new video' do

      end
    end
  end

end