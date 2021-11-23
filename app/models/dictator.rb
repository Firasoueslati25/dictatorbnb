class Dictator < ApplicationRecord
  belongs_to :user, optional: true

  has_many :bookings
  has_many :reviews_as_dictator, through: :bookings, source: :reviews

  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true, numericality: { only_integer: true }
end
