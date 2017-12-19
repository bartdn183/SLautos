class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  include CarsHelper

  def index
    @cars = Car.all
  end

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
    @car = Car.new(car_params)
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
    @car.features["Key"] = params[:key]

    respond_to do |format|
      if @car.save

        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)

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
            @car.features["Key"] = params[:key]
            @car.save

        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:brand_id, :year, :price, :mileage, :image, :features => [:transmission, :body_type, :mileage, :price, :ext_color, :int_color, :fuel_type, :drive_type, :engine, :seats, :vin, :rear_camera])
    end
end
