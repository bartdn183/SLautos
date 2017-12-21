class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  before_action :all_cars, only: [:index, :create, :update, :destroy]
  before_action :authenticate_user!
  
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

    features_hash(@car)

     if params[:images]
        params[:images].each { |image|
          @car.car_images.create(image: image, uploaded_by: "Bart De Nef", car_id: @car.id)
        }
      end

    @car.save
  end

  def update
    @car_sale_status = @car.sale_status
    @car.update(car_params)

    car_sale_date(@car_sale_status, @car)
      
    features_hash(@car)

    if params[:images]
      params[:images].each { |image|
        @car.car_images.create(image: image, uploaded_by: "Bart De Nef", car_id: @car.id)
      }
    end
    @car.save

  end

  def destroy
    @car.destroy
  end

  private

    def all_cars
      @cars = Car.order(sale_status: :asc)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:brand_id, :year, :sale_status, :sale_date, :image, :features => [:transmission, :body_type, :mileage, :price, :ext_color, :int_color, :fuel_type, :drive_type, :engine, :seats, :vin, :rear_camera, :navigation, :cd_player, :bluetooth, :usb, :plug_12v, :key, :power_windows, :power_door_locks, :power_exterior_mirror, :exterior_mirror_heating])
    end
end
