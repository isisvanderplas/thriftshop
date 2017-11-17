class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products
  end

  private

  def category_params
    params.require(:category).permit(product_ids: [])
  end
end
