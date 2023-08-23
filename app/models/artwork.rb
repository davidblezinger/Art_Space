class Artwork < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :title, presence: true
  validates :photo, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :category, presence: true
end
