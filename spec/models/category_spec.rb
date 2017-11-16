require 'rails_helper'

RSpec.describe Category, type: :model do
  it "is invalid without name" do
    category = Category.new(name: "")
    category.valid?
    expect(category.errors).to have_key(:name)
  end

  # describe "association with products" do
  #   let(:category) { create :category }
  #
  #   let(:product1) { create :product, category: [category]}
  #   let(:product2) { create :product, category: [category]}
  #   let(:product3) { create :product, category: [category]}
  #
  #   it "has products" do
  #     expect(category.products).to include(product1)
  #     expect(category.products).to include(product2)
  #     expect(category.products).to include(product3)
  #   end
  # end
end
