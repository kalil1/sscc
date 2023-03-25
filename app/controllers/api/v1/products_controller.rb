class Api::V1::ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  def index
    @products = Product.all
    render json: @products,
    each_serializer: Api::V1::ProductsSerializer
  end

  def show
    render json: @product,
    serializer: Api::V1::ProductsSerializer
  end

  def search

    given_length = params[:length].to_i
    given_width = params[:width].to_i
    given_height = params[:height].to_i
    given_weight = params[:weight].to_i

    # Find the closest matching product using Euclidean distance
    closest_product = Product.where(weight: {"$gte": given_weight - 1, "$lte": given_weight + 5}).order("(length - #{given_length})^2 + (width - #{given_width})^2 + (height - #{given_height})^2 ASC").first

    render json: closest_product
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def edit
    if @product.update(product_params)
      render json: @product
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    head :no_content
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :width, :height, :depth, :weight)
  end
end
