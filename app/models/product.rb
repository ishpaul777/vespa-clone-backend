class Product < ApplicationRecord
  belongs_to :user, optional: true

  validates :model, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :color, presence: true
end
