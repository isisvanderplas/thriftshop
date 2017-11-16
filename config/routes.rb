Rails.application.routes.draw do
  resources :categories
  root to: 'pages#home'

  devise_for :users
  resources :profiles, only: [:new, :edit, :create, :update, :show]
  resources :shopping_cart, only: [:edit, :create, :update, :destroy, :show]

  namespace :api do
    resources :products
  end
end
