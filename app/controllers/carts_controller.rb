class CartsController < ApplicationController
  def show
    @cart_items = Cart.where(user_id: current_user.id)
  end

  def edit
  end

  def create
    @cart_items = current_user.carts.create(workout_id: params[:workout_id])
    if @cart_items.save
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
