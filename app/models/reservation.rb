class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :city, presence: true
  validates :reserved_date, presence: true
end
