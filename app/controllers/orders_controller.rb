class OrdersController < ApplicationController

  def show
    user_id = params[:user_id]
    @orders = Order.where(user_id: user_id)
    user = User.find(user_id)
    city = user.city
    group = ShoppingGroup.find_by(city: city)
    res = [:order => @orders, :group => group]
    render :json => res
  end
end
