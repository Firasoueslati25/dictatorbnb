class Booking < ApplicationRecord
  belongs_to :dictator
  belongs_to :user
  has_many :reviews

  validates :status, presence: true
end
