class Booking < ApplicationRecord
  belongs_to :dictator
  belongs_to :user
end
