class Api::ProductsController < ApplicationController

  def index
    render status: 200, json: {
      products: Product.all
    }.to_json
  end

  def show
    product = Product.find(params[:id])

    render status: 200, json: {
    product: product
  }.to_json
  end
end
