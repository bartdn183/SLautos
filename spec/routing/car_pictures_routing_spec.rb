require "rails_helper"

RSpec.describe CarPicturesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/car_pictures").to route_to("car_pictures#index")
    end

    it "routes to #new" do
      expect(:get => "/car_pictures/new").to route_to("car_pictures#new")
    end

    it "routes to #show" do
      expect(:get => "/car_pictures/1").to route_to("car_pictures#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/car_pictures/1/edit").to route_to("car_pictures#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/car_pictures").to route_to("car_pictures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/car_pictures/1").to route_to("car_pictures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/car_pictures/1").to route_to("car_pictures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/car_pictures/1").to route_to("car_pictures#destroy", :id => "1")
    end

  end
end
