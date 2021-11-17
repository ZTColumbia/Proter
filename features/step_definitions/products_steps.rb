Given /the following products exist/ do |products_table|
  products_table.hashes.each do |product|
    Product.create product
  end
end

Given /I have signed in/ do
  @user = User.create(email: 'new_Email_for_testing@Email.com', password: "new_Password_for_testing", first_name: "Alice", last_name: "Bob", city: "New York", state: "NY", address: "100 W, 100 ST", card_number: "1111 1111 1111 1111", card_cvv: "111", card_expired_date: "2021.11.4")
  visit sign_in_path
  fill_in "Email", :with => "new_Email_for_testing@Email.com"
  fill_in "Password", :with => "new_Password_for_testing"
  click_button "Sign in"
end