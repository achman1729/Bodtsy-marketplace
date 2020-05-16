class CartsController < ApplicationController
  def show
    @workouts = current_user.workouts
  end

  def edit
  end

  def create
    user = current_user
    @cart = Cart.new(user_id: current_user.id, workout_id: params[:workout_id])
    # @cart = user.cart.new()
    # render plain: params[:workout_id]
    if @cart.save
      # calling show method with cart.id
      redirect_to show_cart_path(@cart)
    else
      redirect_to root_path
    end

  end

  def update
  end

  def destroy
  end
end
