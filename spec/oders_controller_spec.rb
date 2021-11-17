require 'rails_helper'
require "spec_helper"

describe OrdersController, :type => :controller do
    context "No duplication of products" do
        before :each do
          Order.create(user_id: '1', product_id: '1')
          Product.create(name: 'test1')
          sign_in
        end
        it "should post new test order" do
            get :show, user_id: '1'
            expect(response).to be_truthy
        end
    end
  
    context "Duplication of products" do
       before :each do
          Order.create(user_id: '1', product_id: '1', amount: '1')
          Order.create(user_id: '1', product_id: '1', amount: '2')
          Product.create(name: 'test1')
          sign_in
        end
        it "should post new test order" do
            get :show, user_id: '1'
            expect(response).to be_truthy
        end
   end
end
