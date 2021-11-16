require 'rails_helper'

describe OrdersController, :type => :controller do
    describe "GET #show" do
        before :each do
          Order.create(user_id: '1')
          User.create(email: 'Bob@gmail.com', password: "bobalice", first_name: "Alice", last_name: "Bob", city: "New York", state: "NY", address: "100 W, 100 ST", card_number: "1111 1111 1111 1111", card_cvv: "111", card_expired_date: "2021.11.4")
        end
        it "should post new test order" do
            get :show, user_id: '1'
            expect(response).to be_truthy
        end
    end
end
