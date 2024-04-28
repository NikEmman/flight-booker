class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers
  validates :flight_id, presence: true
  validates :num_tickets, presence: true
end