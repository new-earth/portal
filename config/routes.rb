Portal::Application.routes.draw do
  devise_for :members
  root 'home#index'
  get 'test' => 'home#test'
  
  get 'locations' => 'pages#locations',             section: 'locations', as: 'locations'
  get 'institute' => 'pages#institute',             section: 'institute', as: 'institute'
  get 'enter-new-earth' => 'pages#enter_new_earth', section: 'enter', as: 'enter'
  get 'bank-exchange' => 'pages#bank_exchange',     section: 'exchange', as: 'exchange'
  get 'festival' => 'pages#festival',               section: 'festival', as: 'festival'

  # resources 'members', only: [:new, :create, :index] do
  #   collection do
  #     get 'declaration'
  #     post 'newsletter', to: 'members#newsletter_create'
  #   end
  # end

  # get '*path' => 'pages#index'

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
