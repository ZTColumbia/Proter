Given /the following products exist/ do |products_table|
  products_table.hashes.each do |product|
    Product.create product
  end
end

Given /the user sign in/ do
  @user = User.create(email: 'Bob@gmail.com', password: "bobalice", first_name: "Alice", last_name: "Bob", city: "New York", state: "NY", address: "100 W, 100 ST", card_number: "1111 1111 1111 1111", card_cvv: "111", card_expired_date: "2021.11.4")
  @cart = Cart.create(user_id: @user.id, items: "")
  visit sign_in_path
  fill_in "Email", :with => "Bob@gmail.com"
  fill_in "Password", :with => "bobalice"
  click_button "Sign in"
end