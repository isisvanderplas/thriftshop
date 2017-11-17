Rails.application.routes.draw do
  resources :categories
  root to: 'pages#home'
  get "/pages/terms", to: 'pages#terms', as: 'terms'


  devise_for :users
  resources :profiles, only: [:new, :edit, :create, :update, :show]
  resources :shopping_cart, only: [:edit, :create, :update, :destroy, :show]
  resources :products

  namespace :api do
    resources :products
  end
end
