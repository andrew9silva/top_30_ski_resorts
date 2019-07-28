require 'pry'
require 'nokogiri'
require 'open-uri'

class Top30SkiResorts::Scraper
  
  @@states = []
  @@resorts = []
  
  def self.scrape_resorts
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
  
    document.css("table.index-table-2017 tbody.single-resort-cell").each do |mountain|
      name = mountain.children[3].children[3].children[0].text
      state = mountain.children[3].children[3].children[5].children.text
      full_report = mountain.children.children[22].children[0].attr("href")
      Top30SkiResorts::Mountain.new(name, state, full_report)
      @@resorts << { :resort => name, :location => state, :link => full_report }
    end
    @@resorts
  end 
  
  def self.scrape_states
    document = Nokogiri::HTML(open('https://www.zrankings.com/'))
    
    document.css("table.index-table-2017 tbody.single-resort-cell").each do |mountain|
      state = mountain.children[3].children[3].children[5].children.text
      Top30SkiResorts::States.new(state)
      @@states << state 
    end
    @@states
  end
end
  
  #want to return array with link to each resort in particular state in the top 30.
  #state = mountain.children[3].children[3].children[5].children.text