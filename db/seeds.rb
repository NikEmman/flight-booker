# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
names = ["Athens", "Heathrow", "Dubai", "Los Angeles", "New Delhi","Singapore", "Munich", "Miami" ]
codes = ["ATH", "LHR", "DXB", "LAX", "DEL", "DEL", "SIN", "MUC", "MIA"]

names.zip(codes).each do |name, code|
    Airport.create(name: name, code: code)
  end

def populate_flights(n)
  airports = Airport.all
  n.times do
    departure_airport, arrival_airport = airports.sample(2)
    start = rand(1..30).days.from_now
    duration = rand(1..12) * 60 # duration in minutes
    Flight.create(departure_airport_id: departure_airport.id, arrival_airport_id: arrival_airport.id, start: start, duration: duration)
  end
end

populate_flights(100)