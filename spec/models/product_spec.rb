require 'rails_helper'

RSpec.describe Product, type: :model do
  it "is invalid without name" do
    product = Product.new(name: "")
    product.valid?
    expect(product.errors).to have_key(:name)
  end
end
