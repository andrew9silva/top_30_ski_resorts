require 'pry'
require 'nokogiri'
require 'open-uri'

class Top30SkiResorts::Resorts
  
  attr_accessor :state, :full_report
  
  #want to return array with link to each resort in particular state in the top 30.
  
  
  
  
  #full_report = document.search("td.name-rank")[0..29].children[0].attr("href")
  #state = document.search("td.name-rank")[0..29].children.children[2].text
  document = Nokogiri::HTML(open('https://www.zrankings.com/'))
  
  
  def self.colorado
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
    colorado_resorts = []
    resorts = document.search("td.name-rank")[0..29].children.children[2].text
    
    
    
    
    
    #the if portion here is not working appropriately.  Got "test" to be returned when running./bin/ski_resorts.rb
    
    #Do I need a different way to discern the states/which resort links to pull up?
     
    if resorts.include?("CO") 
      document.search("td.name-rank")[0..29].children[0].attr("href")
    else
      nil 
    end
    
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
    wyoming_resorts = []
    
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
     
    if document.search("span.desktop-700").first.children.text == "WY"
      wyoming_resorts << document.search("a#btn-rank-index.btn-more-snow-index.more-profile").first.attr("href") 
    else
      nil 
    end
    wyoming_resorts
  end
  
end
    