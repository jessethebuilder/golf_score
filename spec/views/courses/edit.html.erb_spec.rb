require 'rails_helper'

RSpec.describe "courses/edit", :type => :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :name => "MyString",
      :tag_line => "MyString",
      :description => "MyText",
      :course_rating => 1.5,
      :slope_rating => 1.5
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input#course_name[name=?]", "course[name]"

      assert_select "input#course_tag_line[name=?]", "course[tag_line]"

      assert_select "textarea#course_description[name=?]", "course[description]"

      assert_select "input#course_course_rating[name=?]", "course[course_rating]"

      assert_select "input#course_slope_rating[name=?]", "course[slope_rating]"
    end
  end
end
