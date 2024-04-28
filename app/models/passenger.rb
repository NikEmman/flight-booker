class Passenger < ApplicationRecord
    belongs_to :booking 
    belongs_to :flight, through: :booking
end
