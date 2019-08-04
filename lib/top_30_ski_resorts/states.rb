class Top30SkiResorts::States 
  
  attr_accessor :state_name, :resorts 
  
  @@all_states = []
  
  def initialize(state_name)
    @state_name = state_name
    @resorts = []
    add_state
  end
  
  def add_state
    @@all_states << self
  end
  
  def self.all
    Top30SkiResorts::Scraper.scrape_states if @@all_states.empty?
    @@all_states
  end
  
  def self.get_resorts
    Top30SkiResorts::Scraper.scrape_resorts if @resorts.empty?
  end
end