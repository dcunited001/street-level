StreetLevel::Application.routes.draw do

  #sponsor_types = /(platinum|gold|silver)/i
  #match 'sponsors/:level' => 'sponsors#index', :constraints => { :level => sponsor_types }
  #match 'sponsors/:slug' => 'sponsors#show', :as => :sponsor

  #its possible to dip into database to grab current types,
  #   but i don't know that its a good idea when processing routes
  #   i'd be more comfortable doing this after optimization
  #   and after i knew the event_types were cached
  #event_types = EventTypes.all.map({|et| et.name}).join('|')
  #event_types = Regexp.new "(#{event_types})", Regexp::IGNORECASE
  #match ':event_type' => 'events#index', :constraints => { :event_type => event_types }
  #match 'events/:slug' => 'events#show', :as => :event


  #match 'videos/:slug' => 'videos#show', :as => :video



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
