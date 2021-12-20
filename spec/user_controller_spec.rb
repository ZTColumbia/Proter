require 'rails_helper'
require 'monkeypatch'
require 'clearance/rspec'

RSpec.describe UsersController, type: 'controller' do
    describe "GET #show" do
        before :each do
          sign_in
        end
        it "should post new test user" do
        get :show, id: 1
            expect(response).to be_truthy
        end
    end
    
    describe "POST #create" do
        it "should post new test user" do
        post :create, :user => {:email => "Bob@gmail.com", :password => "bobalice", :first_name => "Alice", :last_name => "Bob", :city => "New York", :state => "NY", :address => "100 W, 100 ST", :card_number => "1111 1111 1111 1111", :card_cvv => "111", :card_expired_date => "2021.11.4"}
            expect(User).to redirect_to(Clearance.configuration.redirect_url)
        end
    end
  
    describe "POST #update" do
        before :each do
          sign_in
        end
        it "should post new test user" do
        user = {"email" => "Bob@gmail.com", "password" => "bobalice", "first_name" => "Alice", "last_name" => "Bob", "city" => "New York", "state" => "NY", "address" => "100 W, 100 ST", "card_number" => "1111 1111 1111 1111", "card_cvv" => "111", "card_expired_date" => "2021.11.4"}
        put :update, id: 1, user: user
            expect(response).to be_truthy
        end
    end
  
    describe "GET #edit" do
        before :each do
          sign_in
        end
        it "should post new test user" do
        get :edit, id: 1
            expect(response).to be_truthy
        end
    end
  
   describe "GET #profile" do
        before :each do
          sign_in
        end
        it "should post new test user" do
        get :profile, id: 1
            expect(response).to be_truthy
        end
    end
  
    describe "GET #profile" do
        before :each do
          sign_in
        end
        it "should post new test user" do
        get :profile, id: 1
            expect(response).to be_truthy
        end
    end
end

