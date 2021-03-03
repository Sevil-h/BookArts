class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artwork
  has_many :reviews
  validates :start_date, presence: true
  validates :end_date, presence: true
  # validates :total_price, presence: true
  # validates :approval, presence: true
end
