class AddProductToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :product, :string
  end
end
