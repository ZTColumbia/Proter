class OrdersController < ApplicationController

  def show
    user_id = current_user.id
    @orders = Order.where(user_id: user_id)
    render :json => @orders
  end
end
