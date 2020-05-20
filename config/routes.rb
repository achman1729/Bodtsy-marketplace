Rails.application.routes.draw do
  devise_for :users

  root "workouts#index"
  
  resources :workouts

  # Cart routes
  get "/users/:id/cart", to: "carts#show", as: "show_cart"
  post "/users/:id/cart", to: "carts#create"
  
  delete "/users/:user_id/cart/:cart_item_id", to: "carts#destroy", as: "cart_item"

  # becoming a trainer
  get "/become-trainer", to: "users#new_trainer", as: "new_trainer"
  # update user to trainer
  post "/become-trainer", to: "users#create_trainer", as:"create_trainer"
  
  # trainer dashboard view
  get "/users/trainer", to: "trainers#index", as: "trainer"
  
end
