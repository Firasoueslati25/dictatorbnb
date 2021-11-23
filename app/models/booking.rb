class Booking < ApplicationRecord
  validates :name, :address, presence: :true
  belongs_to :users, :dictators
  has_many :reviews, dependent: :destroy
end
