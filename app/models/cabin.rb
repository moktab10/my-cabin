class Cabin < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many_attached :photos
  validates :localisation, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :price_per_night, presence: true
  validates :beds, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
