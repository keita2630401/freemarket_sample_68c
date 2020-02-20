Rails.application.routes.draw do
  get 'purchase/index'
  get 'purchase/done'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root  'items#index'
  resources :adresses, only: [:index, :new, :create, :edit, :update]
  resources :items ,only: [:show, :new, :create] do
    resources :purchase, only: [:index] do
      collection do
        get 'index', to: 'purchase#index'
        post 'pay', to: 'purchase#pay'
        get 'done', to: 'purchase#done'
      end
    end
  end
  resources :cards, only: [:new, :show] do
    collection do
      post 'show', to: 'cards#show'
      post 'pay', to: 'cards#pay'
      post 'delete', to: 'cards#delete'
    end
  end
end