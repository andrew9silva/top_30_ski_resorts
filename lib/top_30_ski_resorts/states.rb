class Top30SkiResorts::States 
  
  attr_accessor :state, :resorts
  
  @@all_states = []
  
  def initialize(state, resorts)
    @state = state
    @resorts = []
    add_state
  end
  
  def add_state
    @@all_states << self
  end
  
  def grab_resorts
    if self.resorts.empty?
      Top30SkiResorts::Scraper.scrape_resorts(self)
    else
      nil
    end
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