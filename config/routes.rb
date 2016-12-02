Rails.application.routes.draw do

  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :orders
  resources :carts
  resources :line_items
  root 'store#index'
  get 'store/index'
  resources :products
end
