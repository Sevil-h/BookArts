class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artwork
  has_one :review
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_cannot_come_before_start_date
  # validates :total_price, presence: true
  # validates :approval, presence: true

  def end_date_cannot_come_before_start_date
    if end_date.present? && end_date < start_date
      errors.add(:end_date, "end date must come after start date")
    end
  end
end
