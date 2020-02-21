Rails.application.routes.draw do
devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root  'items#index'
  get "/purchase",to: "items#purchase"
  resources :adresses, only: [:index, :new, :create, :edit, :update]
  resources :items do
    resources :purchase, only: [:index] do
      collection do
        post 'pay', to: 'purchase#pay'
        get 'done', to: 'purchase#done'
      end
    end
  end
  resources :cards, only: [:new, :show] do
    collection do
      post 'ono', to: 'cards#ono'
      post 'pay', to: 'cards#pay'
      post 'delete', to: 'cards#delete'
    end
  end
end