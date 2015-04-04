Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root 'home#index'

  resources :conversations, only: [:index, :show, :destroy]

  resources :friendships, only: [:index, :create, :show, :edit, :update, :destroy]

  resources :users
  resources :projects
end
