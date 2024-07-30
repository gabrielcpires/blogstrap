Rails.application.routes.draw do
  devise_for :users
  resources :categories
  root 'articles#index'

  resources :articles
  resources :categories, except: [:show]
end
