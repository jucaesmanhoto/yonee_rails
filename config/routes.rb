Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  
  resources :posts do
    resources :reviews, only: %i(create update destroy)
  end
  resources :users, only: %i(show)
end
