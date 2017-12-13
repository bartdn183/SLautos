require 'rails_helper'

RSpec.describe "car_pictures/edit", type: :view do
  before(:each) do
    @car_picture = assign(:car_picture, CarPicture.create!(
      :car_id => 1
    ))
  end

  it "renders the edit car_picture form" do
    render

    assert_select "form[action=?][method=?]", car_picture_path(@car_picture), "post" do

      assert_select "input[name=?]", "car_picture[car_id]"
    end
  end
end
