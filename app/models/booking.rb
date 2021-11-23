class Booking < ApplicationRecord
  validates :start_date, :end_date, presence: true
  belongs_to :users, :dictators
  has_many :reviews, dependent: :destroy
end
