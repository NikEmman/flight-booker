class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @flight_departure_options = @flights.map{ |f| f.departure_airport.name_code }.uniq
    @flight_arrival_options = @flights.map{ |f| f.arrival_airport.name_code }.uniq
  end

  
  
end
