class Product < ApplicationRecord
  belongs_to :user, optional: true
  has_many :reserves, dependent: :delete_all, foreign_key: 'product_id'

  validates :model, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :color, presence: true

  has_one_attached :image

  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end
end
