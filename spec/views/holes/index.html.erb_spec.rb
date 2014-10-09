require 'rails_helper'

RSpec.describe "holes/index", :type => :view do
  before(:each) do
    assign(:holes, [
      Hole.create!(
        :number => 1,
        :name => "Name",
        :par => 2,
        :tees => "MyText"
      ),
      Hole.create!(
        :number => 1,
        :name => "Name",
        :par => 2,
        :tees => "MyText"
      )
    ])
  end

  it "renders a list of holes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
