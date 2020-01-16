class Item < ApplicationRecord
  belongs_to :category
  has_many :images
  belongs_to :category
  belongs_to :bland


  scope :recent, -> { order(created_at: :desc).limit(4) }
end
