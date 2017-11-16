class Profile < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, numericality: { only_integer: true }

end
