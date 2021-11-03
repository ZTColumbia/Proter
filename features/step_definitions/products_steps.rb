Given /the following products exist/ do |products_table|
  products_table.hashes.each do |product|
    Product.create product
  end
end