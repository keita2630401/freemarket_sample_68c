Rails.application.routes.draw do
  devise_for :users
  root  'items#index'
  resources :adresses, only: [:index, :new, :create, :edit, :update]
  resources :items, only: [:new, :create]
  resources :users, only: [:index]
  get 'users/logout', to: 'users#logout'
  get 'users/card',   to: 'users#card'
  get 'users/create', to: 'users#create'
end