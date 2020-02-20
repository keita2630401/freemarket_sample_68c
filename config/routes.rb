Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root  'items#index'
  get "/purchase",to: "items#purchase"
  resources :adresses, only: [:index, :new, :create, :edit, :update]
  resources :users, only: [:index]
  get 'users/logout', to: 'users#logout'
  get 'users/card',   to: 'users#card'
  get 'users/create', to: 'users#create'
end
  resources :items
end
