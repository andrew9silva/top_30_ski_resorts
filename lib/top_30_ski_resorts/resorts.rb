require 'pry'
require 'nokogiri'
require 'open-uri'

class Top30SkiResorts::Resorts
  
  #want to return array with link to each resort in particular state in the top 30.
  
  
  
  #full_report = document.search("td.name-rank")[0].children[0].attr("href")
  #state = document.search("td.name-rank")[0].children.children[2].text
  #document = Nokogiri::HTML(open('https://www.zrankings.com/'))
  #document.css("table.index-table-2017").each do |mountain|
  
   
  def self.alaska
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
    mountains =[]
    
    document.css("table.index-table-2017").each do |mountain|
      states = {}
      states[:alaska] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "AK" }
      mountains << states
    end
    mountains
  end
  
  def self.california
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
    mountains =[]
    
    document.css("table.index-table-2017").each do |mountain|
      states = {}
      states[:california] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "CA" }
      mountains << states
    end
    mountains
  end
  
  def self.canada
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
    mountains =[]
    
    document.css("table.index-table-2017").each do |mountain|
      states = {}
      states[:canada] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "BC" }
      mountains << states
    end
    mountains
  end
  
  def self.colorado
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
    mountains =[]
    
    document.css("table.index-table-2017").each do |mountain|
      states = {}
      states[:colorado] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "CO" }
      mountains << states
    end
    mountains
  end
  
  def self.montana
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
    mountains =[]
    
    document.css("table.index-table-2017").each do |mountain|
      states = {}
      states[:montana] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "MT" }
      mountains << states
    end
    mountains
  end
  
  def self.new_mexico
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
    mountains =[]
    
    document.css("table.index-table-2017").each do |mountain|
      states = {}
      states[:new_mexico] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "NM" }
      mountains << states
    end
    mountains
  end
  
  def self.utah 
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
    mountains =[]
    
    document.css("table.index-table-2017").each do |mountain|
      states = {}
      states[:utah] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "UT" }
      mountains << states
    end
    mountains
  end
  
  def self.wyoming
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
    mountains =[]
    
    document.css("table.index-table-2017").each do |mountain|
      states = {}
      states[:wyoming] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "WY" }
      mountains << states
    end
    mountains
  end
  
end

#the if portion here is not working appropriately.  Got "test" to be returned when running./bin/ski_resorts.rb
    
    #Do I need a different way to discern the states/which resort links to pull up?
    #document.css("td.name-rank")[0..29].children.children[2].text
    #document.search("td.name-rank")[0..29].children[0].attr("href")
    