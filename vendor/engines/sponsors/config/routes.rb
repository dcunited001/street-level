::Refinery::Application.routes.draw do
  resources :sponsors, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :sponsors, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
