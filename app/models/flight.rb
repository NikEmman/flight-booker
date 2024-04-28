class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport', foreign_key: 'departure_airport_id'
  belongs_to :arrival_airport, class_name: 'Airport', foreign_key: 'arrival_airport_id'


    def duration_formatted
      hours = duration / 60
      minutes = duration % 60
      "#{hours}h #{minutes}m"
    end
end
