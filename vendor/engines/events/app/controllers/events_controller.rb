class EventsController < ApplicationController

  before_filter :find_all_events
  before_filter :find_page

  def index
    @future_events = @events.where('start >= ?', Date.today).order('start ASC').limit(5)
    @past_events = @events.where('start < ?', Date.today).order('start DESC')
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @event in the line below:
    present(@page)
  end

  def show
    @event = Event.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @event in the line below:
    present(@page)
  end

protected

  def find_all_events
    @events = Event.where('visible = ?', true).order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/events").first
  end

end
