class Flight < ApplicationRecord
    belongs_to :departure_airport, class_name: 'Airport'
    belongs_to :arrival_airport, class_name: 'Airport'


    def duration_formatted
      hours = duration / 60
      minutes = duration % 60
      "#{hours}h #{minutes}m"
    end
end
