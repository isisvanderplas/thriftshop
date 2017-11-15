class ShoppingCart
  attr_reader :cart_items

  def initialize(session = {})
    @session = session
    session_items = session[:products] || []
    @cart_items = session_items.map do |item|
      CartItem.from_hash(item)
    end
  end

  def add_product(product, quantity = 1)
    raise ArgumentError.new("Not a product") unless product.is_a?(Product)

    if already_ordered?(product)
      update_cart(product, quantity)
    else
      @cart_items.push CartItem.new(product, quantity)
      store!
    end

    return true
  end

  def remove_product(product, quantity = 1)
    return false unless already_ordered?(product)

    @cart_items.select! do |item|
      next if item.product.id != product.id

      item.quantity -= quantity
      quantity > 0 # Remove the item if the quantity is 0 or less
    end

    return true
  end

  def already_ordered?(product)
    @cart_items.map(&:product).map(&:id).include?(product.id)
  end

  def update_cart(product, quantity)
    return false unless already_ordered?(product)

    @cart_items.each do |item|
      if item.product.id == product.id
        item.quantity += quantity
      end
    end

    store!

    return true
  end

  def store!
   @session[:shopping_cart] = @cart_items.map do |item|
     item.to_hash
   end
 end

  class CartItem

      attr_reader :product, :quantity
     attr_accessor :added_at, :price

     def initialize(product, quantity)
       @product = product
       @product_id = product.id
       @quantity = quantity
       @added_at = Time.now
       # Store the price at time of purchase
       @price = product.price
     end

     def to_hash
       {
         product_id: @product_id,
         quantity: @quantity,
         added_at: @added_at,
         price: @price
       }
     end

     def self.from_hash(item_hash)
       product = Product.where(id: item_hash[:product_id]).first
       return if product.nil?

       item = CartItem.new(product, item_hash[:quantity])
       item.added_at = item_hash[:added_at]
       item.price = item_hash[:price]
       item
     end

  end


end
