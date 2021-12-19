# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Link, type: :model do
  it { is_expected.to validate_presence_of(:url) }

  describe "#url" do
    it "support http scheme url " do
      link = Link.new(url: "http://example.com")
      expect(link).to be_valid
    end

    it "support https scheme url " do
      link = Link.new(url: "https://example.com")
      expect(link).to be_valid
    end

    context "invalid url" do
      it "link is not valid" do
        link = Link.new(url: "example.com")
        expect(link).not_to be_valid
      end
    end
  end
end
