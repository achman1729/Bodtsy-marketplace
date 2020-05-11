Rails.application.routes.draw do
  devise_for :trainers
  devise_for :users
  root 'home#index'
end
