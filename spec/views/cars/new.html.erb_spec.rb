require 'rails_helper'

RSpec.describe "cars/new", type: :view do
  before(:each) do
    assign(:car, Car.new(
      :brand_id => 1,
      :year => 1,
      :features => "MyText"
    ))
  end

  it "renders new car form" do
    render

    assert_select "form[action=?][method=?]", cars_path, "post" do

      assert_select "input[name=?]", "car[brand_id]"

      assert_select "input[name=?]", "car[year]"

      assert_select "textarea[name=?]", "car[features]"
    end
  end
end
