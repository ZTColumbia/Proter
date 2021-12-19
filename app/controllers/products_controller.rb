class ProductsController < ApplicationController
  def show
    id = params[:id]
    @product = Product.find(id)
  end

  def create
    name = product_params[:name]
    brand = product_params[:brand]
    price = product_params[:price]
    weight = product_params[:weight]
    color = product_params[:color]
    discount = product_params[:discount]
    category = product_params[:category]
    box = product_params[:box]

    if not name or not brand or not price or not weight or not color or not discount or not category or not box
      flash[:notice] = "Your input is invalid!"
      redirect_to products_path
    else
      @product = Product.create!(product_params)
      flash[:notice] = "#{@product.name} was successfully created."
      redirect_to products_path
    end
  end

  def update
    @product = Product.find params[:id]
    @product.update_attributes!(product_params)
    flash[:notice] = "#{@product.name} was successfully updated."
    redirect_to products_path(@product)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product '#{@product.name}' deleted."
    redirect_to products_path
  end
    
  def edit
    @product = Product.find params[:id]
  end

  def index
    @products = Product.all
  end
    
  def new
  end

  # def buy
  #   @product = Product.find(params[:id])
  #   count=@product[:buy_count]
  #   if count==nil
  #       count=0
  #   end
  #   @product[:buy_count]=count+1
  #
  #   flash[:notice] = "You buy product '#{@product.name}' successfully!."
  #   redirect_to '/products/'+params[:id]
  # end
    
  def product_params
    params.require(:product).permit(:image, :product_id, :name, :seller_id, :brand, :price, :weight, :color, :discount, :category, :box, :created_at, :updated_at, :buy_count, :avatar)
  end
end
