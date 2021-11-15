class StoreController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        id = params[:product_id]
        @product = Product.find(id)
    end
end
