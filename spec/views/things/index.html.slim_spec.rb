require 'rails_helper'

RSpec.describe "things/index", type: :view do
  before(:each) do
    assign(:things, [
      Thing.create!(
        name: "Name"
      ),
      Thing.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of things" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
