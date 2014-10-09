require 'rails_helper'

RSpec.describe "holes/edit", :type => :view do
  before(:each) do
    @hole = assign(:hole, Hole.create!(
      :number => 1,
      :name => "MyString",
      :par => 1,
      :tees => "MyText"
    ))
  end

  it "renders the edit hole form" do
    render

    assert_select "form[action=?][method=?]", hole_path(@hole), "post" do

      assert_select "input#hole_number[name=?]", "hole[number]"

      assert_select "input#hole_name[name=?]", "hole[name]"

      assert_select "input#hole_par[name=?]", "hole[par]"

      assert_select "textarea#hole_tees[name=?]", "hole[tees]"
    end
  end
end
