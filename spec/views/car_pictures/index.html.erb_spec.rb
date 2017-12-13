require 'rails_helper'

RSpec.describe "car_pictures/index", type: :view do
  before(:each) do
    assign(:car_pictures, [
      CarPicture.create!(
        :car_id => 2
      ),
      CarPicture.create!(
        :car_id => 2
      )
    ])
  end

  it "renders a list of car_pictures" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
