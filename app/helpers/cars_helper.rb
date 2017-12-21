module CarsHelper

	def add_edit_car
	   @brands = Brand.order(name: :asc)
       @year = []
       for i in 2000..Time.current.year
       	@year.push(i)
       end
	end

	def features_hash(car)
		features_hash = {"Transmission" => :transmission, "Body" => :body, "Mileage" => :mileage, "Price" => :price, "Exterior Color" => :ext_color, "Interior Color" => :int_color, "Fuel Type" => :fuel_type, "Drive Type" => :drive_type, "Engine" => :engine, "Seats" => :seats, "Cruise Control" => :cruise_control, "AC" => :ac, "VIN" => :vin, "Rear Camera" => :rear_camera, "Navigation" => :navigation, "CD Player" => :cd_player, "Bluetooth" => :bluetooth, "USB" => :usb, "12 Volt Plug" => :plug_12v, "Key" => :key, "Power Windwows" => :power_windows, "Power Door Locks" => :power_door_locks, "Power Exterior Mirros" => :power_exterior_mirror, "Exterior Mirror Heating" => :exterior_mirror_heating}

		features_hash.each do |feature_key, feature_param|
			unless params[feature_param].blank?
				if feature_key == "Price"
      				car.features[feature_key] = params[feature_param].to_i
      			else
      				car.features[feature_key] = params[feature_param]
      			end
      		end
      	end
    end

end
