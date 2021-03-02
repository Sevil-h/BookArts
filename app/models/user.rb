class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings, dependent: :destroy
  has_many :artworks, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :address, presence: true
  validates :email_address, uniqueness: true
  validates :email_address, presence: true
  validates :email_address, format: { with: /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/ }
end
