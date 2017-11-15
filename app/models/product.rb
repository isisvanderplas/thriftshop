class Product < ApplicationRecord


  has_many :carts, dependent: :destroy
  has_many :customers, through: :carts, source: :user
end
