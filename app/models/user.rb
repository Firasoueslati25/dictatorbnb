class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :dictators, dependent: :destroy

  # Bookings fait en tant que locataire vers les dictators d'autres users
  has_many :bookings

  # Bookings reçus par le user sur ses dictateurs
  has_many :bookings_as_owner, through: :dictators, source: :bookings

  validates :name, presence: true
  validates :country, presence: true
  validates :description, presence: true
end
