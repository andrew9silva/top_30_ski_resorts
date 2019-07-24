require 'pry'
require 'nokogiri'
require 'open-uri'

class Top30SkiResorts::Scraper
  def self.scrape_resort_cell
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
  
    
    document.css("table.index-table-2017 tbody.single-resort-cell").each do |mountain|
      binding.pry
      #name = mountain.children[3].children[3].children[0].text
      #state = mountain.children[3].children[3].children[5].children.text
      #full_report = mountain.children.children[22].children[0].attr("href")
      
  end 
end
  
  #want to return array with link to each resort in particular state in the top 30.
  
  
  
  
  
   
  

#the if portion here is not working appropriately.  Got "test" to be returned when running./bin/ski_resorts.rb
    
    #Do I need a different way to discern the states/which resort links to pull up?
    #document.css("td.name-rank")[0..29].children.children[2].text
    #document.search("td.name-rank")[0..29].children[0].attr("href")
end