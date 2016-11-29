Rails.application.routes.draw do
  resources :carts
  resources :line_items
  root 'store#index'
  get 'store/index'
  resources :products
end
