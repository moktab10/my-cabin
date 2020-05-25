class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cabin
  has_many :reviews
end
