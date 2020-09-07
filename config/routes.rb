Rails.application.routes.draw do
  resources :products
  resources :carts

  get 'welcome/index'

  post '/add_to_cart/:product_id' => 'cart#add_to_cart', :as => 'add_to_cart'

  root :to => 'products#index'

end
