Rails.application.routes.draw do
  devise_for :users
  root  'home#top'
  resources :adresses, only: [:index, :new, :create, :edit, :update]
  resources :items, only: [:new, :create]
end