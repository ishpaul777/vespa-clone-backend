class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: ProductSerializer.new(@products).serializable_hash[:data].map { |hash| hash[:attributes] }
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user

    if @product.save
      render json: @product, status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:model, :price, :description, :color, :image)
  end
end
