Rails.application.routes.draw do
  root 'pages#index'

  resources :pages, only: [:index]
  resources :listings, only: [:index, :show]

  resources :users, only: [:new, :create, :show] do
    resources :listings
  end
  resources :sessions, only: [:new, :create, :destroy]

end
