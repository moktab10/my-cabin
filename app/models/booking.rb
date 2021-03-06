class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cabin
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :number_of_guests, presence: true
end
