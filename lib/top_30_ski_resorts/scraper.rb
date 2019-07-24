require 'pry'
require 'nokogiri'
require 'open-uri'

class Top30SkiResorts::Scraper
  def self.scrape_resort_cell
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
    reports = {}
    
    #mountain.css("a")[1].attributes["href"].value = resort link?
    #mountain.css("span.desktop-700").children.text = resort state?
    
    document.css("tbody.single-resort-cell span.desktop-700").each do |mountain|
      
  end 
end
  
  # def self.scrape_resort_cell
  #   document = Nokogiri::HTML(open('https://www.zrankings.com/'))
  #   reports = {}
    
  #   #mountain.css("a")[1].attributes["href"].value = resort link?
  #   #mountain.css("span.desktop-700").children.text = resort state?
    
  #   document.css("tbody.single-resort-cell span.desktop-700").each do |mountain|
      
  # end 
  
  #want to return array with link to each resort in particular state in the top 30.
  
  
  
  #full_report = document.search("td.name-rank")[0].children[0].attr("href")
  #state = document.search("td.name-rank")[0].children.children[2].text
  #document = Nokogiri::HTML(open('https://www.zrankings.com/'))
  #document.css("table.index-table-2017").each do |mountain|
  
   
  

#the if portion here is not working appropriately.  Got "test" to be returned when running./bin/ski_resorts.rb
    
    #Do I need a different way to discern the states/which resort links to pull up?
    #document.css("td.name-rank")[0..29].children.children[2].text
    #document.search("td.name-rank")[0..29].children[0].attr("href")