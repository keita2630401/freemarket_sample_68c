Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root  'items#index'
  get "/purchase",to: "items#purchase"
  resources :adresses, only: [:index, :new, :create, :edit, :update]
  resources :users, only: [:index]
  resources :items
  resources :cards, only: [:new, :create]
  get 'users/logout', to: 'users#logout'
  get '/cards', to: 'cards#create'
end

