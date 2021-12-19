require 'rails_helper'

RSpec.describe "LinkOpeners", type: :request do
  xdescribe "GET /open" do
    it "returns http success" do
      get "/link_opener/open"
      expect(response).to have_http_status(:success)
    end
  end

  describe "open link" do
    it "redirect to the link url" do
      link = Link.create(url: "https://example.com")
      get "/l/#{link.id}"
      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to("https://example.com")
    end
  end
end
