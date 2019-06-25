class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.date :date
      t.integer :deluxe_type
      t.integer :luxury_type
      t.integer :luxury_suite
      t.integer :precidential_suite

      t.timestamps
    end
  end
end
