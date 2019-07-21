require 'pry'
require 'nokogiri'
require 'open-uri'

class Top30SkiResorts::Resorts
  
  #want to return array with link to each resort in particular state in the top 30.
  
  
  
  #full_report = document.search("td.name-rank")[0].children[0].attr("href")
  #state = document.search("td.name-rank")[0].children.children[2].text
  #document = Nokogiri::HTML(open('https://www.zrankings.com/'))
  #document.css("table.index-table-2017").each do |mountain|
  
  def self.scrape
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
    mountains =[]
    
    #report = mountain.css("a")[2].attributes["href"].value
    #state = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.collect{ |x| x == "CO" }
    
    document.css("table.index-table-2017").each do |mountain|
      states = {}
      states[:alaska] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "AK" }
      states[:california] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "CA" }
      states[:canada] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "BC" }
      states[:colorado] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "CO" }
      states[:montana] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "MT" }
      states[:new_mexico] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "NM" }
      states[:utah] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "UT" }
      states[:wyoming] = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.select{ |x| x == "WY" }
      mountains << states
    end
    mountains
  end 
  
  def self.colorado
    puts "Colorado resorts"
  end
  
  def self.california
    puts "Mammoth, Squaw Valley, Kirkwood"
  end
  
  def self.alaska
    puts "Alyeska"
  end
  
  def self.canada
    puts "Whistler, Whitewater, Revelstoke, Fernie"
  end
  
  def self.montana
    puts "Big Sky, Whitefish"
  end
  
  def self.new_mexico
    puts "Taos"
  end
  
  def self.utah 
    puts "Snowbird, Alta, Park City, Solitude, Brighton, Deer Valley"
  end
  
  def self.wyoming
    puts "Jackson Hole"
  end
end

#the if portion here is not working appropriately.  Got "test" to be returned when running./bin/ski_resorts.rb
    
    #Do I need a different way to discern the states/which resort links to pull up?
    #document.css("td.name-rank")[0..29].children.children[2].text
    #document.search("td.name-rank")[0..29].children[0].attr("href")
    