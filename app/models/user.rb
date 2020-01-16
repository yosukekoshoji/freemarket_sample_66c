class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, :first_name, :last_name, :first_name_rattle, presence: true
  has_one :phone_number
  has_one :address
  has_one :card
  accepts_nested_attributes_for :phone_number, :address, :card
end