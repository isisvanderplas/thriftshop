class PagesController < ApplicationController
  def home
    @products = Product.all
  end

  def terms
  end

  def about
  end

  def team
  end
end
