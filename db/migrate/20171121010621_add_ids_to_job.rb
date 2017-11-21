class AddIdsToJob < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :user_id, :integer
    add_column :jobs, :boat_id, :integer
  end
end
