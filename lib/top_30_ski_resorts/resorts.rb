require 'pry'

class Top30SkiResorts::Resorts
  
  #want to scrape and return hash that has each resort as a :key and the 'Full Report' link as the 'value' in each state's method.  example for Colorado.... "{Telluride Ski Resort" => "/ski-resorts/163-telluride-ski-resort, "Vail Ski Resort" => "/ski-resorts/169-vail-ski-resort"... etc.
  
  
  
  
  
  
  
  def self.colorado
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
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
    puts "Jackson Hole, Grand Targhee"
  end
  
end
    
  