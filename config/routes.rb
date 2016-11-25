Rails.application.routes.draw do
  resources :carts
  resources :line_items
  root to: 'store#index', as: 'store'
  get 'store/index'
  resources :products
end
