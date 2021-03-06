Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'stores#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # User Module
    resources :users,
      only: Clearance.configuration.user_actions do
        resource :password,
          controller: 'clearance/passwords',
          only: [:edit, :update]
    end
  get 'users/:id', to: 'users#show', as: :user
  get 'users/:id/profile', to: 'users#profile', as: :profile
  get 'users/:id/edit', to: 'users#edit', as: :edit_user
  put 'users/:id', to: 'users#update', as: :update_user
    
  # Cart Module
  get "/carts", to: 'carts#show'
  get 'all_carts', to: 'carts#all'
  post 'carts', to: 'carts#create'

  # Order Module
  get 'orders', to: 'orders#show'
  resources :purchases
  resources :orders

  resources :products
      # get 'products/:id/buying', to: 'products#buy', as: :buying
  resources :stores


  #General Control
  #For Shopping Group
  get 'buy', to: 'purchases#buy'
  get 'group/:city', to: 'purchases#group'

  #Store Pages
  get 'stores/:product_id', to: 'stores#show'
  get 'stores/', to: 'stores#index'


  get "/purchases", to: 'purchases#show'


end
