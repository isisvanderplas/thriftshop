require 'rails_helper'

RSpec.describe Category, type: :model do
  it "is invalid without name" do
    category = Category.new(name: "")
    category.valid?
    expect(category.errors).to have_key(:name)
  end
end
