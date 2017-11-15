#
#
#   def create
#     @cart = customer.carts.create(cart_params)
#
#     redirect_to @cart.product, notice: "Thank you for buying this amazing product!"
#   end
#
#   private
#
#   def cart_params
#     params.require(:cart).permit(:quantity, :price, :total_price, :product_id)
#   end

class ShoppingCartController < ApplicationController

  #   before_action :authenticate_user!

  def index
    @cart_item = @cart_items.all
  end
  

  def create
    # add something to it
    product = Product.find(params[:product_id])
    quantity = params[:quantity]

    if shopping_cart.add_product(product, quantity)
      #     redirect_to @cart.product, notice: "Thank you for buying this amazing product!"
    else
      # not so happy, something went wrong
    end
  end

  def destroy
    # remove something from it
  end
end
