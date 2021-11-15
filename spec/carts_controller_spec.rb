require 'rails_helper'

describe CartsController, :type => :controller do
    describe "GET #all" do
        it "should post new test cart" do
            get :all
            expect(response).to be_truthy
        end
    end
    
   context "Cart not exists" do
       it "Should be post a cart" do
          post :create, {:user_id => "2", :product_id => "1", :amount => "1"}
          expect(response).to be_truthy
        end
   end
   
   context "Cart exists" do
        before :each do
          Cart.create(user_id: '1', items: "1_1|2_2")
        end
        it "Should be post a cart" do
          post :create, {:user_id => "1", :product_id => "1", :amount => "1"}
          expect(response).to be_truthy
        end
   end
    
   context "Cart not exists in show" do
       it "Should be post a cart" do
          get :show, user_id: "2"
          expect(response).to be_truthy
        end
   end
   
   context "Cart exists in show" do
        before :each do
          Product.create(name: 'test1')
          @product = Product.all
          Cart.create(user_id: '1', items: "1_1")
        end
        it "Should be post a cart" do
          get :show, user_id: "1"
          expect(response).to be_truthy
        end
   end
end
