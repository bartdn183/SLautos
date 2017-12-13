class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.integer :brand_id
      t.integer :year
      t.text :features

      t.timestamps
    end
  end
end
