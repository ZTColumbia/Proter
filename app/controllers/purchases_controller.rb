require 'set'
class PurchasesController < ApplicationController

  def group
    @city = params[:city]
    @group = ShoppingGroup.where(city:@city).order(id: :desc).limit(1).take

    if not @group
      res = "No Group"
      render text: res
    else
      res = {:id => @group.id, :city => @group.city, :cur_people => @group.cur_people, :total_people => @group.total_people}
      render :json => res
    end
  end

  def buy
    @user_id = params[:user_id]
    @product_num = params[:product_num]
    @city = params[:city]

    #Get the shopping group of current city
    @group = ShoppingGroup.where(city:@city).order(id: :desc).limit(1).take
    if not @group or @group.cur_people == @group.total_people
      #creata a new shopping group if no existing group in current city
      #先写死成20
      people = @user_id.to_s + "_"
      new_group = {:city => @city, :cur_people => 1, :total_people => 20, :people => people}
      @new_group = ShoppingGroup.create!(new_group)
      flash[:notice] = "A new shopping group in #{@new_group.city} was successfully created."
      puts "A new shopping group in #{@new_group.city} was successfully created."
    else
      group = ShoppingGroup.find(@group.id)
      people_set = group.people.split("_").to_set
      puts people_set
      if people_set.member?(@user_id.to_s)
        flash[:notice] = "User #{@user_id} was already in the shopping group of #{@city}."
        puts "User #{@user_id} was already in the shopping group of #{@city}."
      else
        group.cur_people = group.cur_people + 1
        new_people_string = ""
        for e in people_set
          new_people_string += e + "_"
        end
        new_people_string += @user_id.to_s + "_"
        group.people = new_people_string
        group.save
        puts "User #{@user_id} was added into the shopping group of #{@city}."
      end
    end
    render :json => @city
  end
end
