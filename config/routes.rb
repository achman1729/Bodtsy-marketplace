Rails.application.routes.draw do

  devise_for :trainers
  devise_for :users
  root 'workouts#index'
  resources :workouts
  resources :carts, only: [:show, :edit, :update, :destroy]
end
