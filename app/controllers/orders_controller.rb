class OrdersController < ApplicationController

  def show
    user_id = params[:user_id]
    @orders = Order.where(user_id: user_id)
    render :json => @orders
  end
end
