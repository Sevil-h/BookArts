class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artwork
  has_one :review, dependent: :destroy
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_cannot_come_before_start_date, :booking_dates_cannot_be_in_the_past
  # validates :total_price, presence: true
  # validates :approval, presence: true

  def end_date_cannot_come_before_start_date
    if end_date.present? && end_date < start_date
      errors.add(:end_date, "must come after start date")
    end
  end

  def booking_dates_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "cannot be in the past")
    end
    if end_date.present? && end_date < Date.today
      errors.add(:end_date, "cannot be in the past")
    end
  end
end
