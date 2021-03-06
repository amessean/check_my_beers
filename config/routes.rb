Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :beers, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
    resources :favorites, only: [:new, :create]
  end
  resources :favorites, except: [:new, :create]
  get 'scan', to: 'beers#scan'
  get '/myreviews', to: 'reviews#index'
  get '/find_beer_from_scan', to: 'beers#find_beer_from_scan'
  get '/myfavorites', to: 'favorites#index'
  get '/guide', to: 'beers#guide'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
end
