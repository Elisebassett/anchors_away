class AddOpenToJob < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :open, :boolean
  end
end
