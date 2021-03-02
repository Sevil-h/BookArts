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
  validates :email, uniqueness: true
  validates :email, presence: true
  # validates :email, format: { :with /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/ }
end
