class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :job_id
      t.integer :boat_id

      t.timestamps
    end
  end
end
