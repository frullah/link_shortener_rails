require 'rails_helper'

RSpec.describe "root path", type: :request do
  it "redirect to /links" do
    get root_path
    expect(response).to render_template("links/index")
  end
end
