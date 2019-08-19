class Top30SkiResorts::Mountain
  
  attr_accessor :name, :state_name, :full_report
  
  @@all_resorts = []
  @@states = []
  
  def initialize(name, state_name, full_report)
    @name = name
    @full_report = full_report
    @state = Top30SkiResorts::States.find_or_create_by(state_name)
    add_resort
    add_states
  end
    
  def add_resort
    @@all_resorts << self
  end
  
  def self.all
    Top30SkiResorts::Scraper.scrape_resorts if @@all_resorts.empty?
    @@all_resorts
  end
  
  def add_states
    @@states << @state
  end 
  
  def self.states
    @@states
  end
end