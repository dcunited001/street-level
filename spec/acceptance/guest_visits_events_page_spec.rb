require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'Guest visits events page' do
  before do

  end

  scenario 'starting from the home page' do
    visit homepage
    click_link 'Events'

    within '.sponsors-list' do

    end
  end
end