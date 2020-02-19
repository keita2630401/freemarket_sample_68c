Rails.application.routes.draw do
  devise_for :users
  root  'items#index'
  resources :adresses, only: [:index, :new, :create, :edit, :update]
  resources :items, except: :index
end
