require 'rails_helper'

RSpec.describe "CarPictures", type: :request do
  describe "GET /car_pictures" do
    it "works! (now write some real specs)" do
      get car_pictures_path
      expect(response).to have_http_status(200)
    end
  end
end
