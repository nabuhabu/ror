Rails.application.routes.draw do
  devise_for :users
root 'posts#index', as: 'home'

# get 'about' => 'pages#about', as: 'about'
get 'ingredients' => 'ingredients#index', as:'ingredients'
resources :posts, :ingredients, :items, :creators, :myclients, :myorders, :deliveries
  end
