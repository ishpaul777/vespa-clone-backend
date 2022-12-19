class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: ProductSerializer.new(@products).serializable_hash[:data].map { |hash| hash[:attributes] }
  end

  def show
    @product = Product.find(params[:id])
    render json: ProductSerializer.new(@product).serializable_hash[:data][:attributes]
  end

  def create
    return unless current_user.role == 'admin'

    @product = Product.new(product_params)
    @product.user = current_user

    if @product.save
      render json: ProductSerializer.new(@product).serializable_hash[:data][:attributes], status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    return unless current_user.role == 'admin'

    @product = Product.find(params[:id])
    if @product.destroy
      render json: { message: 'Product deleted' }, status: :ok
    else
      render json: { message: 'Product not deleted' }, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:model, :price, :description, :color, :image)
  end
end
