require 'rails_helper'

describe StoresController, :type => :controller do
    describe "GET #index" do
        it "should render index template" do
            get :index
            expect(response).to render_template('index')
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
end
