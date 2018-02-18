class ProductsController < ApplicationController
  def index
    @ninja = current_user.ninja
    @products = Product.all
  end

  def show
    @ninja = current_user.ninja
    @product = Product.find(params[:id])
  end

  def new
    @ninja = current_user.ninja
    @product = Product.new
  end

  def create
    @ninja = current_user.ninja
    @products = Product.all
    @product = Product.create(product_params)
  end

  def edit
    @ninja = current_user.ninja
    @product = Product.find(params[:id])
  end

  def update
    @ninja = current_user.ninja
    @products = Product.all
    @product = Product.find(params[:id])

    @product.update_attributes(product_params)
  end

  def delete
    @ninja = current_user.ninja
    @product = Product.find(params[:product_id])
  end

  def destroy
    @ninja = current_user.ninja
    @products = Product.all
    @product = Product.find(params[:id])
    @product.destroy
  end

private
  def product_params
    params.require(:product).permit(:name, :price)
  end
end
