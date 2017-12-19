class RemoveAttributesFromCars < ActiveRecord::Migration[5.1]
  def change
    remove_column :cars, :mileage, :integer
    remove_column :cars, :price, :decimal
  end
end
