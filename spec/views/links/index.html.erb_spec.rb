require 'rails_helper'

RSpec.describe "links/index", type: :view do
  before(:each) do
    assign(:links, [
      Link.create!(
        url: "Url"
      ),
      Link.create!(
        url: "Url"
      )
    ])
  end

  it "renders a list of links" do
    render
    assert_select "#links>p", text: "Show this link".to_s, count: 2
  end
end
