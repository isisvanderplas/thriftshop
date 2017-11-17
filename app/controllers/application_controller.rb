class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :get_categories
  before_action :get_products


  private

  def get_categories
    @categories = Category.all
  end

  def get_products
    @products = Product.all
  end
end
