require 'rails_helper'

describe PurchasesController, :type => :controller do
    context "Have citys to group" do
        before :each do
          ShoppingGroup.create(city: 'New York')
          @group = ShoppingGroup.all
        end
        it "Should be show a shoppinggroup" do
          get :group, :city => @group.take.city
          expect(response).to be_truthy
        end
   end
    
   context "Not have citys to group" do
        before :each do
          ShoppingGroup.create(city: 'New York')
          @group = ShoppingGroup.all
        end
        it "Should be show a shoppinggroup" do
          get :group, :city => "Washington"
          expect(response).to be_truthy
        end
   end
    
    context "Not have citys to buy" do
        it "Should be post a shoppinggroup" do
          post :buy, {:user_id => "1", :product_num => "1", :city => "New York"}
          expect(response).to be_truthy
        end
   end
    
   context "Have citys to buy and not in group" do
        before :each do
          ShoppingGroup.create(city: 'San Francisco', cur_people: '1', total_people: '2', people: 'Alice_Bob')
          @group = ShoppingGroup.all
        end
        it "Should be post a shoppinggroup" do
          post :buy, {:user_id => "1", :product_num => "1", :city => "San Francisco"}
          expect(response).to be_truthy
        end
   end
    
   context "Have citys to buy and in group" do
        before :each do
          ShoppingGroup.create(city: 'San Francisco', cur_people: '1', total_people: '2', people: 'Alice_Bob')
          @group = ShoppingGroup.all
        end
        it "Should be post a shoppinggroup" do
          post :buy, {:user_id => "Bob", :product_num => "1", :city => "San Francisco"}
          expect(response).to be_truthy
        end
   end
end
