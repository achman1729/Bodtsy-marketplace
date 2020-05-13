Rails.application.routes.draw do
  # get '/trainers/sign_in', to: "trainers#index", as: "trainer_root"
  root "workouts#index"
  devise_for :users
  resources :workouts
  resources :carts, only: [:show, :edit, :update, :destroy]

  # becoming a trainer
  get "/become-trainer", to: "users#new_trainer", as: "new_trainer"
  # update user to trainer
  post "/become-trainer", to: "users#create_trainer", as:"create_trainer"
  
  # trainer dashboard view
  get "/trainer", to: "trainers#index", as: "trainer"
  
end
