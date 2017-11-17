class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @categories = @product.categories
  end

  private

  def product_params
    params.require(:product).permit(category_ids: [])
  end
end
