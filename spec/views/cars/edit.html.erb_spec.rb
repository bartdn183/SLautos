require 'rails_helper'

RSpec.describe "cars/edit", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :brand_id => 1,
      :year => 1,
      :features => "MyText"
    ))
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(@car), "post" do

      assert_select "input[name=?]", "car[brand_id]"

      assert_select "input[name=?]", "car[year]"

      assert_select "textarea[name=?]", "car[features]"
    end
  end
end
