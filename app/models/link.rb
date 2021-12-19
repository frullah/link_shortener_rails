class Link < ApplicationRecord
  URL_REGEXP = URI::DEFAULT_PARSER.make_regexp(%w[http https])

  validates :url, presence: true, format: {
    with: URL_REGEXP,
    message: "is not a valid URL" 
  }
end
