class User < ApplicationRecord
  has_many :bookings
  has_many :cabins, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
end
