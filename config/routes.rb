Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :users, only: [:new,:create]
  get '/login', to:'sessions#new', as: :login 
  delete '/logouts', to:'sessions#destroy', as: :logout
  resources :order_items
  resources :orders
  resources :toppings
  resources :items
  resources :ice_cream_shops
  resources :addresses
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
