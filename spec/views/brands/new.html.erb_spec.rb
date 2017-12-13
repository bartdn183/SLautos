require 'rails_helper'

RSpec.describe "brands/new", type: :view do
  before(:each) do
    assign(:brand, Brand.new(
      :name => "MyString",
      :model => "MyString"
    ))
  end

  it "renders new brand form" do
    render

    assert_select "form[action=?][method=?]", brands_path, "post" do

      assert_select "input[name=?]", "brand[name]"

      assert_select "input[name=?]", "brand[model]"
    end
  end
end
