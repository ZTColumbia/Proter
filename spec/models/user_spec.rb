require 'rails_helper'

RSpec.describe User, type: :model do
  it "has one record after creating" do
    User.create(email: "Bob@gmail.com", password: "bobalice", first_name: "Alice", last_name: "Bob", city: "New York", state: "NY", address: "100 W, 100 ST", card_number: "1111 1111 1111 1111", card_cvv: "111", card_expired_date: "2021.11.4")
    expect(User.count).to eq(1)
  end
end