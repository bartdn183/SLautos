class Brand < ApplicationRecord

	has_many :cars

	def brand_model
		"#{name} - #{model}"
	end
end
