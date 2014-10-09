require 'rails_helper'

RSpec.describe "holes/show", :type => :view do
  before(:each) do
    @hole = assign(:hole, Hole.create!(
      :number => 1,
      :name => "Name",
      :par => 2,
      :tees => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
