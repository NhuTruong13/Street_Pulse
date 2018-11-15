Rails.application.routes.draw do
  root to: 'searches#new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: :show
  resources :searches do
    resources :reviews do
      resources :answers
    end
  end
  resources :users, only: [:show]
end
