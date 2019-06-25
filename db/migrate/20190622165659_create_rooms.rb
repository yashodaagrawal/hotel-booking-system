class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :room_id
      t.string :name
      t.integer :occupancy_limit
      t.integer :price
      t.integer :room_type
      t.boolean :availability
      t.timestamps
    end
  end
end
