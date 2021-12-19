require 'rails_helper'

RSpec.describe "links/new", type: :view do
  before(:each) do
    assign(:link, Link.new(
      url: "MyString"
    ))
  end

  it "renders new link form" do
    render

    assert_select "form[action=?][method=?]", links_path, "post" do

      assert_select "input[name=?]", "link[url]"
    end
  end
end
