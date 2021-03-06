class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.integer :containers
      t.string :origin
      t.string :destination
      t.decimal :cost

      t.timestamps
    end
  end
end
