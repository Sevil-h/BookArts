class Artwork < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many_attached :photos
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :rate, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %w[painting drawing sculpture graphic\ design ceramic photography] }

  include PgSearch::Model
  pg_search_scope :global_search,
      against: [:name, :category, :description], 
      associated_against: {
        user: [:username]
      },
      using: {
        tsearch: { prefix: true }
      }
end



