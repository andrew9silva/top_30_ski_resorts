class Top30SkiResorts::Mountain
  
  attr_accessor :name, :state_name, :full_report
  
  @@all_resorts = []
  
  def initialize(name, state_name, full_report)
    @name = name
    @state_name = state_name
    @full_report = full_report
    add_resort
  end
    
  def add_resort
    @@all_resorts << self
    @@all_resorts
  end
  
  def self.all
    Top30SkiResorts::Scraper.scrape_resorts if @@all_resorts.empty?
    @@all_resorts
  end
  
  def add_to_state
    Top30SkiResorts::States.resorts << self unless Top30SkiResorts::States.resorts.include?(self)
  end 
  
end