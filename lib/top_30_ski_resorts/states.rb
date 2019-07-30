class Top30SkiResorts::States 
  
  attr_accessor :state, :resorts 
  
  @@all_states = []
  
  def initialize(state)
    @state = state
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
  
  def get_resorts
    Top30SkiResorts::Scraper.scrape_resorts(self) if @resorts.empty?
  end 
end