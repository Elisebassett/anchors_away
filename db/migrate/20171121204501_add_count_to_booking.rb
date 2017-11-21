class AddCountToBooking < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :count, :integer
  end
end
