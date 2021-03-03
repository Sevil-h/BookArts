class Artwork < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many_attached :photos
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :rate, presence: true
  validates :category, presence: true
end
