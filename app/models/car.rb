class Car < ApplicationRecord
	has_many :car_pictures
	belongs_to :brand

	serialize :features, Hash

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	BODY_TYPE = ["Sedan", "Pick Up Truck", "Van Minivan", "Coupe", "SUV", "Wagon", "Hatchback", "Convertible", "Other"]
end
