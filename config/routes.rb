Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'

  get "/adulthood", to: "pages#adulthood", as: :adulthood
  get "/about", to: "pages#about", as: :about
  resources :posts do
    resources :reviews, only: %i(create update destroy)
  end
  resources :users, only: %i(index show) do
    member do
      post :follow
      post :unfollow
    end
  end
end
