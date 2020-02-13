Rails.application.routes.draw do
  root  'home#top'
  resources :items, only: [:new, :create]
end
