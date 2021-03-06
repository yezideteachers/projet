Rails.application.routes.draw do

 

  get 'recapitulative/personne'

  get 'recapitulative/chapitre'

  root to: 'static_pages#home'

 
  get 'static_pages/home'

  get 'static_pages/help'

 
  resources :users 
  resources :chapitres
  resources :anecdotes
  resources :scenes
  resources :personnes
  



  get 'users/index'

  get 'users/new'

  get 'users/show'

  get 'users/create'

  get 'personnes/index'

  get 'personnes/new'

  get 'personnes/show'

  get 'personnes/create'

  get 'personnes/destroy'

  
  get 'scenes/index'

  get 'scenes/new'

  get 'scenes/show'

  get 'scenes/create'

  get 'scenes/destroy'

  get 'anecdotes/index'

  get 'anecdotes/new'

  get 'anecdotes/show'

  get 'anecdotes/create'

  get 'anecdotes/destroy'

  get 'chapitres/index'

  get 'chapitres/new'

  get 'chapitres/show'

  get 'chapitres/create'

  get 'chapitres/destroy'
  get 'chapitres/home'
  get 'chapitres/scene'

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
