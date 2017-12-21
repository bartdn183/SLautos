class AddSaleDateToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :sale_date, :datetime
  end
end
