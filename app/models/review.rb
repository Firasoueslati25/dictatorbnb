class Review < ApplicationRecord
  belongs_to :booking

  validates :rating, inclusion: { in: 1..10 }
end
