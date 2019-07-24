require 'pry'
require 'nokogiri'
require 'open-uri'

class Top30SkiResorts::Scraper
  def self.scrape_resort_cell
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
    
    
    #mountain.css("a")[1].attributes["href"].value = full_report
    #mountain.css("span.desktop-700").children.text = state
    
    document.css("table.index-table-2017 tbody.single-resort-cell").each do |mountain|
      
  end 
end
  
  #want to return array with link to each resort in particular state in the top 30.
  
  
  
  
  
   
  

#the if portion here is not working appropriately.  Got "test" to be returned when running./bin/ski_resorts.rb
    
    #Do I need a different way to discern the states/which resort links to pull up?
    #document.css("td.name-rank")[0..29].children.children[2].text
    #document.search("td.name-rank")[0..29].children[0].attr("href")