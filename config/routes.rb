Rails.application.routes.draw do

  get 'trainers/index'
  root 'workouts#index'
  get '/user' => "welcome#index", :as => :user_root
  
  devise_for :trainers
  devise_for :users
  resources :workouts
  resources :carts, only: [:show, :edit, :update, :destroy]
end
