class Product < ApplicationRecord
  belongs_to :user, optional: true

  validates :model, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :color, presence: true

  has_one_attached :image


  def imageUrl
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end
end
