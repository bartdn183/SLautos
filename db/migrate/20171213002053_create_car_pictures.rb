class CreateCarPictures < ActiveRecord::Migration[5.1]
  def change
    create_table :car_pictures do |t|
      t.integer :car_id

      t.timestamps
    end
  end
end
