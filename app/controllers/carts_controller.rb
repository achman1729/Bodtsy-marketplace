class CartsController < ApplicationController
  def show
<<<<<<< HEAD
    @workouts = current_user.workouts
=======
    @cart_items = Cart.where(user_id: current_user.id)
>>>>>>> 608f87b
  end

  def edit
  end

  def create
<<<<<<< HEAD
    user = current_user
    @cart = Cart.new(user_id: current_user.id, workout_id: params[:workout_id])
    # @cart = user.cart.new()
    # render plain: params[:workout_id]
    if @cart.save
=======
    @cart_items = current_user.carts.create(workout_id: params[:workout_id])
    if @cart_items.save
>>>>>>> 608f87b
      # calling show method with cart.id
      redirect_to show_cart_path(current_user)
    else
      redirect_to root_path
    end
  end

  def destroy
    @cart_items = Cart.where(user_id: current_user.id)
    @cart_items.each do |workout|
      workout.destroy
    end
  end
end
