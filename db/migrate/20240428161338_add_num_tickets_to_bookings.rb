class AddNumTicketsToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :num_tickets, :integer
  end
end
