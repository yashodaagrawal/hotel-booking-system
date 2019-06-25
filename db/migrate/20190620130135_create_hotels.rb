class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :occupancy_limit

      t.timestamps
    end
  end
end
