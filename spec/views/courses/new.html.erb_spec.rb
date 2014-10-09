require 'rails_helper'

RSpec.describe "courses/new", :type => :view do
  before(:each) do
    assign(:course, Course.new(
      :name => "MyString",
      :tag_line => "MyString",
      :description => "MyText",
      :course_rating => 1.5,
      :slope_rating => 1.5
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input#course_name[name=?]", "course[name]"

      assert_select "input#course_tag_line[name=?]", "course[tag_line]"

      assert_select "textarea#course_description[name=?]", "course[description]"

      assert_select "input#course_course_rating[name=?]", "course[course_rating]"

      assert_select "input#course_slope_rating[name=?]", "course[slope_rating]"
    end
  end
end
