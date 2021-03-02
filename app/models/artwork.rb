class Artwork < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :photo, presence: true
  validates :rate, presence: true
  validates :category, presence: true
end
