Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root  'items#index'
  resources :adresses, only: [:index, :new, :create, :edit, :update]
  resources :items, only: [:new, :create, :edit, :update]
end
