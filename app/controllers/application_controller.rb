class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_page_name

  def set_page_name
    @page_name = request.request_uri.split('/').last.to_s
  end
end


