WessexCCP::Application.routes.draw do

  resources :admins


  get "analytics/feedback"
  get "analytics/home"

  get "feedback/complete"

  resources :completed_surveys


  resources :responses


  resources :questions


  resources :surveys


  resources :articles


  get "registration/profile"
  get "registration/edit_profile"

  resources :clinicians do
    collection { post :profile_complete }
  end


  resources :faculties


  get "portfolio/my_attendance"


  devise_for :users, :controllers => { :registrations => "users/registrations" }

  resources :teaching_formats


  resources :formats do
    collection { post :import }
  end


  resources :attendances do
    collection { post :import }
  end


  resources :teaching_sessions do
    collection { post :import }
  end


  resources :students do
    collection { post :import, :profile_complete }
  end

  resources :admins do
    collection { post :import, :profile_complete }
  end


  resources :units do
    collection { post :import }
  end


  resources :themes do
    collection { post :import }
  end


  resources :topics do
    collection { post :import }
  end


  resources :outcomes do
    collection { post :import }
  end

  get "pages/home"
  get "pages/curriculum"

  root :to => "pages#home"

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
