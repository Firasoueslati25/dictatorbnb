class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :dictators, dependent: :destroy
  has_many :bookings

  validates :name, presence: true
  validates :country, presence: true
  validates :description, presence: true
end
