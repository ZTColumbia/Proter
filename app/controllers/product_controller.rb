class ProductsController < ApplicationController
  def show
    id = params[:product_id]
    @product = Product.find(id)
  end

  def create
    @product = Product.create!(product_params)
    flash[:notice] = "#{Product.product_id} was successfully created."
    redirect_to products_path
  end

  def update
    @product = Product.find params[:product_id]
    @product.update_attributes!(movie_params)
    flash[:notice] = "#{@product.product_id} was successfully updated."
    redirect_to products_path(@product)
  end

  def destroy
    @product = Product.find(params[:product_id])
    @product.destroy
    flash[:notice] = "Product '#{@product.product_id}' deleted."
    redirect_to products_path
  end

  def index
    @product = Product.all
  end
end
