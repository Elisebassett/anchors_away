class AddUserIdToBoat < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :user_id, :integer
    add_column :boats, :job_id, :integer
  end
end
