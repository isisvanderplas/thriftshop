Rails.application.routes.draw do
  resources :categories
  root to: 'pages#home'
  get "/pages/terms", to: 'pages#terms', as: 'terms'
  get "/pages/about", to: 'pages#about', as: 'about'
  get "/pages/team", to: 'pages#team', as: 'team'


  devise_for :users
  resources :profiles, only: [:new, :edit, :create, :update, :show]
  resources :shopping_cart, only: [:edit, :create, :update, :destroy, :show]
  resources :products

  namespace :api do
    resources :products
  end
end
