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

  describe "show" do
    before :each do
      Product.create(name: 'test1')
      @product = Product.all
    end
    it "Should be show a product" do
      get :show, id: @product.take.id
      expect(assigns(:product)).to eq(@product.take)
    end
  end

  context "Updating Products" do
    before :each do
      Product.create(name: 'test1')
      @product = Product.all
    end
    it "Should be updating a product" do
      product = @product.take
      product_param = {name: 'test2'}
      put :update, id: product.id, product: product_param
      expect(flash[:notice]).to eq("#{product_param[:name]} was successfully updated.")
      expect(response).to redirect_to(products_path(product.id ))
      expect(Product.find(product.id).name).to eq('test2')
    end

  end

  context "Destroy Products" do
    before :each do
      Product.create(name: 'test1')
      @product = Product.all
    end

    it "Should be destroy a product" do
      products_count = Product.all.count
      product = @product.take
      delete :destroy, id: product.id

      expect(flash[:notice]).to eq("Product '#{product.name}' deleted.")
      expect(response).to redirect_to(products_path)
      expect(@product.count).to eq(products_count -1)
    end

    context "Editing a Product" do
      before :each do
        Product.create(name: 'test1')
        @product = Product.all
      end

      it "Should be edit a product" do
        get :edit, id: @product.take.id
        expect(assigns(:product)).to eq(@product.take)
      end
    end

    context "All Products" do
      before :each do
        Product.create(name: 'test1')
        @product = Product.all
      end
      it "Should be updating a product" do
        get :index
      end
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
