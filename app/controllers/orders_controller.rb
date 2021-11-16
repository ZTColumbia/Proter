class OrdersController < ApplicationController

  def show
    user_id = current_user.id
    @user = User.find(user_id)
    @orders = Order.where(user_id: user_id)
    @group = ShoppingGroup.find_by(city: @user.city)

    @combined_order = {}
    @combined_order["products"] = {}
    if @orders != nil && @orders then 
      @orders.each do |order|
        puts("product_id:",order.product_id,
            "user_id:",order.user_id,
            "amount:",order.amount,
            "---------------------------------")
        product_id = order.product_id
        product = Product.find(product_id)
        if @combined_order["products"].key?(product) then
          @combined_order["products"][product] += order.amount
        elsif
          @combined_order["products"][product] = order.amount
        end
      end
    end
    puts("---------------------------------")
    @combined_order["group"] = @group
    puts(@combined_order)


    @res = {:orders => @orders, :group => @group}
    # render :json => @combined_order
    return @combined_order


  end
end
