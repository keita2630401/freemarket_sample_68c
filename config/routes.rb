Rails.application.routes.draw do
  #devise_for :users
  root  'items#new'
  root  'home#top'
  resources :items, only: [:new, :create]
end
