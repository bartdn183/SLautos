require 'rails_helper'

RSpec.describe "cars/index", type: :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        :brand_id => 2,
        :year => 3,
        :features => "MyText"
      ),
      Car.create!(
        :brand_id => 2,
        :year => 3,
        :features => "MyText"
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
