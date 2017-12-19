class AddAttachmentImageToCarPictures < ActiveRecord::Migration[5.1]
  def self.up
    change_table :car_pictures do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :car_pictures, :image
  end
end
