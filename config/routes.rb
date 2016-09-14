Rails.application.routes.draw do
  root 'listings#index'

  resources :listings
  
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]

end
