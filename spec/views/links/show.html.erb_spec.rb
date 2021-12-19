require 'rails_helper'

RSpec.describe "links/show", type: :view do
  before(:each) do
    @link = assign(:link, Link.create!(
      url: "http://example.com"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Url/)
  end
end
