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