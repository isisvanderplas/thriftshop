class CartsController < ApplicationController

  before_action :authenticate_user!

  def create
    @cart = customer.carts.create(cart_params)

    redirect_to @cart.product, notice: "Thank you for buying this amazing product!"
  end

  private

  def cart_params
    params.require(:cart).permit(:quantity, :price, :total_price, :product_id)
  end

end
