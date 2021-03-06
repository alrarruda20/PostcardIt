Rails.application.routes.draw do

  # Routes for the Recipient resource:
  # CREATE
  get "/recipients/new", :controller => "recipients", :action => "new"
  post "/create_recipient", :controller => "recipients", :action => "create"

  # READ
  get "/recipients", :controller => "recipients", :action => "index"
  get "/recipients/:id", :controller => "recipients", :action => "show"

  # UPDATE
  get "/recipients/:id/edit", :controller => "recipients", :action => "edit"
  post "/update_recipient/:id", :controller => "recipients", :action => "update"

  # DELETE
  get "/delete_recipient/:id", :controller => "recipients", :action => "destroy"
  #------------------------------

  # Routes for the Postcard resource:
  # CREATE
  get "/postcards/new", :controller => "postcards", :action => "new"
  post "/create_postcard", :controller => "postcards", :action => "create"

  # READ
  get "/postcards", :controller => "postcards", :action => "index"
  get "/postcards/:id", :controller => "postcards", :action => "show"

  # UPDATE
  get "/postcards/:id/edit", :controller => "postcards", :action => "edit"
  post "/update_postcard/:id", :controller => "postcards", :action => "update"

  # DELETE
  get "/delete_postcard/:id", :controller => "postcards", :action => "destroy"
  #------------------------------

  devise_for :users
  root "photos#index"

  get "/my_photos", :controller => "photos", :action => "my_photos"
  get "/my_timeline", :controller => "photos", :action => "my_timeline"

  get "/my_recipients", :controller => "recipients", :action => "my_recpients"
  get "/my_timeline", :controller => "recipients", :action => "my_recipients"



  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # Routes for the Photo resource:
  # CREATE

  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
