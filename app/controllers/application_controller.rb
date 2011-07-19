class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_page_name
  before_filter :get_sidebar_videos
  before_filter :get_upcoming_events
  before_filter :get_random_sponsors


  def set_page_name
    @page_name = request.request_uri.split('/').last.to_s
  end

  # i know there are ways to optimize the data access here
  # like caching partials or caching the data itself

  # and i know that .sample is a poor way to select random data,
  # but its just so simple, it's perfect for mocking up a solution

  def get_sidebar_videos
    @sidebar_videos = Video.order('created_at DESC').limit(3)
  end

  def get_upcoming_events
    @upcoming_events = Event.where('start > ?', Date.today).order('start ASC').limit(6)
  end

  def get_random_sponsors
    @highlighted_sponsors = Sponsor.all.sample(2)
  end
end


