class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  before_action :all_cars, only: [:index, :create, :update, :destroy]

  include CarsHelper

  def show
  end

  def new

    @car = Car.new

    ## Access Brands & Year Dropdown
    add_edit_car

  end

  def edit

    ## Access Brands & Year Dropdown
    add_edit_car
  end

  def create
    @car = Car.create(car_params)
    @car.features["Transmission"] = params[:transmission] 
    @car.features["Body"] = params[:body_type]
    @car.features["Mileage"] = params[:mileage].to_i
    @car.features["Price"] = params[:price].to_i
    @car.features["Exterior Color"] = params[:ext_color]
    @car.features["Interior Color"] = params[:int_color]
    @car.features["Fuel Type"] = params[:fuel_type]
    @car.features["Drive Type"] = params[:drive_type]
    @car.features["Engine"] = params[:engine]
    @car.features["Seats"] = params[:seats]
    @car.features["Cruise Control"] = params[:cruise_control]
    @car.features["AC"] = params[:ac]
    @car.features["VIN"] = params[:vin]
    @car.features["Rear Camera"] = params[:rear_camera]
    @car.features["Navigation"] = params[:navigation]
    @car.features["CD Player"] = params[:cd_player]
    @car.features["Bluetooth"] = params[:bluetooth]
    @car.features["USB"] = params[:usb]
    @car.features["12 Volt Plug"] = params[:plug_12v]
    @car.features["Key"] = params[:key]
    @car.features["Power Windows"] = params[:power_windows]
    @car.features["Power Door Locks"] = params[:power_door_locks]
    @car.features["Power Exterior Mirrors"] = params[:power_exterior_mirror]
    @car.features["Exterior Mirror Heating"] = params[:exterior_mirror_heating]


     if params[:images]
        params[:images].each { |image|
          @car.car_images.create(image: image, uploaded_by: "Bart De Nef", car_id: @car.id)
        }
      end

    @car.save
  end

  def update
      @car = @car.update(car_params)

      @car.features["Transmission"] = params[:transmission] 
      @car.features["Body"] = params[:body_type]
      @car.features["Mileage"] = params[:mileage].to_i
      @car.features["Price"] = params[:price].to_i
      @car.features["Exterior Color"] = params[:ext_color]
      @car.features["Interior Color"] = params[:int_color]
      @car.features["Fuel Type"] = params[:fuel_type]
      @car.features["Drive Type"] = params[:drive_type]
      @car.features["Engine"] = params[:engine]
      @car.features["Seats"] = params[:seats]
      @car.features["Cruise Control"] = params[:cruise_control]
      @car.features["AC"] = params[:ac]
      @car.features["VIN"] = params[:vin]
      @car.features["Rear Camera"] = params[:rear_camera]
      @car.features["Navigation"] = params[:navigation]
      @car.features["CD Player"] = params[:cd_player]
      @car.features["Bluetooth"] = params[:bluetooth]
      @car.features["USB"] = params[:usb]
      @car.features["12 Volt Plug"] = params[:plug_12v]
      @car.features["Key"] = params[:key]
      @car.features["Power Windows"] = params[:power_windows]
      @car.features["Power Door Locks"] = params[:power_door_locks]
      @car.features["Power Exterior Mirrors"] = params[:power_exterior_mirror]
      @car.features["Exterior Mirror Heating"] = params[:exterior_mirror_heating]
      @car.save

    if params[:images]
      params[:images].each { |image|
        @car.car_images.create(image: image, uploaded_by: "Bart De Nef", car_id: @car.id)
      }
    end

  end

  def destroy
    @car.destroy
  end

  private

    def all_cars
      @cars = Car.all
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:brand_id, :year, :sale_status, :image, :features => [:transmission, :body_type, :mileage, :price, :ext_color, :int_color, :fuel_type, :drive_type, :engine, :seats, :vin, :rear_camera, :navigation, :cd_player, :bluetooth, :usb, :plug_12v, :key, :power_windows, :power_door_locks, :power_exterior_mirror, :exterior_mirror_heating])
    end
end
