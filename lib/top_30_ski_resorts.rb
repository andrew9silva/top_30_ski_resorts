require_relative "./top_30_ski_resorts/version"

module Top30SkiResorts
  class Error < StandardError; end
  # Your code goes here...
end

require_relative './top_30_ski_resorts/CLI'
require_relative './top_30_ski_resorts/mountain'
require_relative './top_30_ski_resorts/scraper'
require 'nokogiri'
require 'pry'
require 'open-uri'
