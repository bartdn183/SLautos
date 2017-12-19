class AddUploadedByToCarPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :car_pictures, :uploaded_by, :string
  end
end
