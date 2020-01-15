class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates :zipcode, :prefecture, :first_address, :second_address, :third_address,presence: true
end