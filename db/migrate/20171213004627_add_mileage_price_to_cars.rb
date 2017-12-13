class AddMileagePriceToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :price, :decimal
    add_column :cars, :mileage, :integer
  end
end
