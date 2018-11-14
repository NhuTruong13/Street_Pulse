Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/main_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :searches
end
