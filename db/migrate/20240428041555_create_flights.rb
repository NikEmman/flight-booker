class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.integer :departure_aiport_id
      t.integer :arrival_airport_id
      t.datetime :start
      t.integer :duration

      t.timestamps
    end
  end
end
