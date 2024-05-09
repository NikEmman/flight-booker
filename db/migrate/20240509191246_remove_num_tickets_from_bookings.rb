class RemoveNumTicketsFromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :num_tickets, :integer
  end
end
