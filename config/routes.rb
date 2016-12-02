Rails.application.routes.draw do

  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  scope '(:locale)' do
    resources :orders
    resources :carts
    resources :line_items
    root 'store#index'
  end

  resources :users
  resources :products
end
