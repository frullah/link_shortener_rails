# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Link < ApplicationRecord
  URL_REGEXP = URI::DEFAULT_PARSER.make_regexp(%w[http https])

  validates :url, presence: true, format: {
    with: URL_REGEXP,
    message: "is not a valid URL" 
  }
end
