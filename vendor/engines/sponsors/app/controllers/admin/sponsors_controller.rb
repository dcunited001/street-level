module Admin
  class SponsorsController < Admin::BaseController

    crudify :sponsor,
            :title_attribute => 'name', :xhr_paging => true

  end
end
