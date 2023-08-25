class Booking < ApplicationRecord
  validates :booking_price, presence: true
  belongs_to :artwork
  belongs_to :user
end
