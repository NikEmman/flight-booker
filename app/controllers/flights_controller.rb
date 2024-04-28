class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all
    @flight_options = @airports.map{|a| a.name_code}.uniq
  end

  def search
  end

  
  
end
