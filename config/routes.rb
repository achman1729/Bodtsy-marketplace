Rails.application.routes.draw do
  get 'workouts/index'
  get 'workouts/new'
  get 'workouts/create'
  get 'workouts/show'
  get 'workouts/edit'
  get 'workouts/update'
  get 'workouts/destroy'
  devise_for :trainers
  devise_for :users
  root 'home#index'
end
