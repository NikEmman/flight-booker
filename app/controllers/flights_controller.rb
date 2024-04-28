class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all
    @flight_options = @airports.map{|a| a.name_code}.uniq
  end

  def search
    @flights = Flight.all
    @airports = Airport.all
    @flight_options = @airports.map{|a| a.name_code}.uniq
    puts params.inspect
    
      # Extract the airport codes from the parameters
      departure_airport_code = params[:departure_airport].split('|').last.strip
      arrival_airport_code = params[:arrival_airport].split('|').last.strip
    
      # Find the airports in the database
      departure_airport = Airport.find_by(code: departure_airport_code)
      arrival_airport = Airport.find_by(code: arrival_airport_code)
    
      # Parse the dates
      start_date = Date.parse(params[:start_date])
      end_date = Date.parse(params[:end_date])
    
      # Find the flights
      @flights = Flight.where(departure_airport_id: departure_airport.id, arrival_airport_id: arrival_airport.id)
                       .where('start >= ? AND start < ?', start_date, end_date + 1.day)
    
  end

  
  
end
