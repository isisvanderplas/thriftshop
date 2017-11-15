class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :carts, dependent: :destroy
  has_many :booked_products, through: :carts, source: :product

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
