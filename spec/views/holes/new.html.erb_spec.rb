require 'rails_helper'

RSpec.describe "holes/new", :type => :view do
  before(:each) do
    assign(:hole, Hole.new(
      :number => 1,
      :name => "MyString",
      :par => 1,
      :tees => "MyText"
    ))
  end

  it "renders new hole form" do
    render

    assert_select "form[action=?][method=?]", holes_path, "post" do

      assert_select "input#hole_number[name=?]", "hole[number]"

      assert_select "input#hole_name[name=?]", "hole[name]"

      assert_select "input#hole_par[name=?]", "hole[par]"

      assert_select "textarea#hole_tees[name=?]", "hole[tees]"
    end
  end
end
