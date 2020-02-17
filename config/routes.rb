Rails.application.routes.draw do
  devise_for :users
  root  'home#top'
  resources :items, only: [:new, :create]
end
