require 'pry'
require 'nokogiri'
require 'open-uri'

class Top30SkiResorts::Resorts
  
  attr_accessor :state, :full_report
  
  #want to return array with link to each resort in particular state in the top 30.
  
  
  
  
  #self.full_report = document.search("a#btn-rank-index.btn-more-snow-index.more-profile").first.attr("href")
  #self.state = document.search("span.desktop-700").first.children.text
  
  
  
  def self.colorado
    
    colorado_resorts = []
    
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
     
    if document.search("span.desktop-700").first.children.text == "CO"
      colorado_resorts << document.search("a#btn-rank-index.btn-more-snow-index.more-profile").first.attr("href")
      
    else
      nil 
    end
    colorado_resorts
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
    