require 'rails_helper'
require 'set'
RSpec.describe Product, type: :model do
  it "has one record after creating" do
    Product.create(product_id: 1, name: 'milk', seller_id: 1, brand: 'Google', price: 1.2, weight: 1.0, color:'white', discount: 0.1, category:'drink', box:'small')
    expect(Product.count).to eq(1)
  end
end

describe Product do
  it 'find products with the given brand' do
    m1 = Product.create(product_id: 1, name: 'milk', seller_id: 1, brand: 'Google', price: 1.2, weight: 1.0, color:'white', discount: 0.1, category:'drink', box:'small')
    m2 = Product.create(product_id: 2, name: 'cola', seller_id: 1, brand: 'Amazon', price: 1.2, weight: 1.0, color:'white', discount: 0.1, category:'drink', box:'small')
    m3 = Product.create(product_id: 3, name: 'pepsi', seller_id: 1, brand: 'Baidu', price: 1.2, weight: 1.0, color:'white', discount: 0.1, category:'drink', box:'small')
    products_to_return = Product.find_by_brand('Google')
    expect(products_to_return).to eql(m1)
  end

  it 'does not return products with other brand' do
    m1 = Product.create(product_id: 1, name: 'milk', seller_id: 1, brand: 'Google', price: 1.2, weight: 1.0, color:'white', discount: 0.1, category:'drink', box:'small')
    m2 = Product.create(product_id: 2, name: 'cola', seller_id: 1, brand: 'Amazon', price: 1.2, weight: 1.0, color:'white', discount: 0.1, category:'drink', box:'small')
    m3 = Product.create(product_id: 3, name: 'pepsi', seller_id: 1, brand: 'Baidu', price: 1.2, weight: 1.0, color:'white', discount: 0.1, category:'drink', box:'small')
    products_to_return = Product.find_by_brand('Apple')
    expect(products_to_return).to eql(nil )
  end
end

RSpec.describe Product, type: :model do
  it "has one record after creating" do
    Product.create(product_id: 1, name: 'milk', seller_id: 1, brand: 'Google', price: 1.2, weight: 1.0, color:'white', discount: 0.1, category:'drink', box:'small')
    expect(Product.count).to eq(1)
  end
end