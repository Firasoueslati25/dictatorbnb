class Booking < ApplicationRecord
  belongs_to :dictator
  belongs_to :user

  has_one :review

  validates :status, presence: true
  validates :total_price, presence: true, numericality: { only_integer: true }
end
