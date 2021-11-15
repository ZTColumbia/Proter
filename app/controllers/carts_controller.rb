class CartsController < ApplicationController

  def all
    @cards = Cart.all
    render :json => @cards
  end

  def create
    user_id = params[:user_id]
    product_id = params[:product_id]
    amount = params[:amount]

    card = Cart.find_by(user_id: user_id)
    if not card
      new_card = {:user_id => user_id, :items => ""}
      @new_card = Cart.create!(new_card)
      puts "A new cart of #{@new_card.user_id} was successfully created."
    end
    item_list = card.items.split('|')
    item_map = {}
    for item in item_list
      id = item.split('_')[0]
      ant = item.split('_')[1]
      item_map[id] = ant
    end
    item_map[product_id.to_s] = (item_map[product_id.to_s].to_i + amount).to_s

    new_item = ""
    item_map.each do |key, value|
      new_item += key + "_" + value + "|"
    end
    card.items = new_item
    card.save
    flash[:notice] = "#{amount} new item #{product_id} was successfully added."
    # render text: "#{amount} new item #{product_id} was successfully added."
    render :json => card
  end

  def show
    user_id = params[:user_id]
    @card = Cart.find_by(user_id: user_id)

    # create the card of current user if not exist
    # itemId1_amount|itemId2_amount
    if not @card
      new_card = {:user_id => user_id, :items => ""}
      @new_card = Cart.create!(new_card)
      puts "A new cart of #{@new_card.user_id} was successfully created."
    end

    @res = []
    items_id_list = @card.items.split('|')
    for item in items_id_list
      id = item.split('_')[0]
      @product = Product.find(id)
      @res += [@product]
    end

    render :json => @res
  end

end