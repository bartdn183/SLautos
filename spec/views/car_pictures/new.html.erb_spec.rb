require 'rails_helper'

RSpec.describe "car_pictures/new", type: :view do
  before(:each) do
    assign(:car_picture, CarPicture.new(
      :car_id => 1
    ))
  end

  it "renders new car_picture form" do
    render

    assert_select "form[action=?][method=?]", car_pictures_path, "post" do

      assert_select "input[name=?]", "car_picture[car_id]"
    end
  end
end
