class Review < ApplicationRecord
  belongs_to :booking
  validates :rating, :comment, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
