Rails.application.routes.draw do
  devise_for :users
  root  'items#index'
  get "/purchase",to: "items#purchase"
  resources :adresses, only: [:index, :new, :create, :edit, :update]
  resources :items, only: [:new, :create]
end