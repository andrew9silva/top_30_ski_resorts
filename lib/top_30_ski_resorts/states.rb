class Top30SkiResorts::States 
  
  attr_accessor :state, :resorts
  
  @@all_states = []
  
  def initialize(state, resorts)
    @state = state
    @resorts = []
  end
  
  def save
    @@all_states << self
  end
  
  def self.all 
    if @@all_states.empty?
      Top30SkiResorts::Scraper.scrape_states
    else
      nil 
    end
    @@all_states
  end
end