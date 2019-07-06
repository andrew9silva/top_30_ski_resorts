require 'nokogiri'
require 'pry'
require 'open-uri'

class Scraper
 def resort_hash
  
   file = File.read('https://www.zrankings.com/')
   zrankings = Nokogiri::HTML(file)
   resorts = []
  
   zrankings.css(".tableshow table-wrap indie-blue").each do |resort|
     resort_details = {}
    binding.pry
 end
  