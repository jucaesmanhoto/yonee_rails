Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:index] do
    member do
      post :follow
      post :unfollow
    end
  end
end
