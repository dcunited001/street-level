module Admin
  class VideosController < Admin::BaseController

    crudify :video,
            :title_attribute => 'name', :xhr_paging => true

    #because refinery doesn't run model callbacks (wtf?)
    #before_filter :set_slug, :only => [:create, :update]
    #
    #def set_slug
    #  video = Video.find(params[:id])
    #  video.insert_slug
    #  video.save
    #end

  end
end
