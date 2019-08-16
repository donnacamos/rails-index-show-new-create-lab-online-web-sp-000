class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def create
    @product = Product.new
    @product.description = params[:description]
    @product.price = params[:price]
    @product.save

    redirect_to product_path(@product)

    def show
      @product = Product.find(params[:id])
  end
end
