class OrdersController < ApplicationController
  
  def new
    @cart_item = Cart.find(params[:cart_item_id])  
    @workout = @cart_item.workout
    
    Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)
      @session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: @workout.title,
          description: "#{@workout.description}",
          images: [@workout.pictures],
          amount: (@workout.price * 100).to_i,
          currency: 'aud',
          quantity: 1,
        }],
        success_url: 'http://localhost:3000/orders/complete',
        cancel_url: 'http://localhost:3000/orders/cancel',
      )
  end

  def complete
  end

  def cancel
  end

end
