class Dictator < ApplicationRecord
  belongs_to :user

  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true, numericality: { only_integer: true }
end
