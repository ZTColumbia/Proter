require 'rails_helper'

describe ProductsController, :type => :controller do
  describe 'create' do
    let!(:params) {{name: "ap"}}
    let!(:product) {double('product', params)}
    it 'create a new product by calling create' do
      expect(Product).to receive(:create!).with(params).and_return(product)
      post :create, {product: params}
    end
  end

  # describe "updates" do
  #   it "product's valid attributes" do
  #     product = Product.create(:name => "Outfoxed", :product_id => 100)
  #     get :update, {:product_id => product.product_id, :product =>
  #       {:name => "Columbia"}
  #     }
  #     expect(response).to redirect_to product_path(product)
  #     expect(flash[:notice]).to match(/Outfoxed! was successfully updated./)
  #     product.destroy
  #   end
  # end
end
