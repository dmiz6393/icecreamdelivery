Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :order_items
  resources :orders
  resources :toppings
  resources :items
  resources :ice_cream_shops
  resources :addresses
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
