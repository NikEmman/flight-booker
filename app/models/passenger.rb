class Passenger < ApplicationRecord
    belongs_to :booking 
    belongs_to :flight, through: :booking

    def new
        @passenger = Passenger.new
    end

    def create
        @passenger = Passenger.new(params[])
    end
end
