class PagesController < ApplicationController
  def home
    @products = Product.all
  end

  def terms
  end
end
