require 'pry'
require 'nokogiri'
require 'open-uri'

class Top30SkiResorts::Resorts
  
  attr_accessor :state, :full_report
  
  #want to return array with link to each resort in particular state in the top 30.
  
  
  
  #full_report = document.search("td.name-rank")[0].children[0].attr("href")
  #state = document.search("td.name-rank")[0].children.children[2].text
  #document = Nokogiri::HTML(open('https://www.zrankings.com/'))
  #document.css("table.index-table-2017").each do |mountain|
  
  def self.scrape
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
    
    #mountains = {}
    #report = mountain.css("a")[2].attributes["href"].value
    #state = mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.collect{ |x| x == "CO" }
    
    document.css("table.index-table-2017").each do |mountain|
      if mountain.css(".desktop-700").children.text.scan(/(\w{2})/).flatten.collect{ |x| x == "CO" }
        mountain.css("a")[2].attributes["href"].value
      else 
        nil
      end
    end
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
    