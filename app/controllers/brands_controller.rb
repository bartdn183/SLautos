class BrandsController < ApplicationController
  before_action :set_brand, only: [:edit, :update, :destroy]
  before_action :all_brands, only: [:index, :create, :update, :destroy]
  before_action :authenticate_user!

  def new
    @brand = Brand.new
  end

  def create
    Brand.create(brand_params)
  end

  def update
    @brand.update(brand_params)
  end

  def destroy
    @brand.destroy
  end

  private

    def all_brands
     @brands = Brand.order(name: :asc, model: :asc)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brand_params
      params.require(:brand).permit(:name, :model)
    end
end
