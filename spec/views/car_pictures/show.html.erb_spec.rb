require 'rails_helper'

RSpec.describe "car_pictures/show", type: :view do
  before(:each) do
    @car_picture = assign(:car_picture, CarPicture.create!(
      :car_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
