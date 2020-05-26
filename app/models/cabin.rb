class Cabin < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  validates :localisation, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :price_per_night, presence: true
  validates :beds, presence: true
end
