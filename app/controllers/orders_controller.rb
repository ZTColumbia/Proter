class OrdersController < ApplicationController

  def show
    user_id = current_user.id
    @user = User.find(user_id)
    @orders = Order.where(user_id: user_id)
    @group = ShoppingGroup.find_by(city: @user.city)
    @res = {:orders => @orders, :group => @group}
    render :json => @res
  end
end
