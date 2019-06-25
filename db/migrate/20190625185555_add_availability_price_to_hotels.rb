class AddAvailabilityPriceToHotels < ActiveRecord::Migration[5.2]
  def change
    add_column :hotels, :availability, :boolean
    add_column :hotels, :price, :integer
  end
end
