require 'rails_helper'

RSpec.describe "courses/index", :type => :view do
  before(:each) do
    assign(:courses, [
      Course.create!(
        :name => "Name",
        :tag_line => "Tag Line",
        :description => "MyText",
        :course_rating => 1.5,
        :slope_rating => 1.5
      ),
      Course.create!(
        :name => "Name",
        :tag_line => "Tag Line",
        :description => "MyText",
        :course_rating => 1.5,
        :slope_rating => 1.5
      )
    ])
  end

  it "renders a list of courses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Tag Line".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
