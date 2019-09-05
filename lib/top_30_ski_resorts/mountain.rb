class Top30SkiResorts::Mountain
  
  attr_accessor :name, :state_name, :full_report
  
  @@all_resorts = []
  
  def initialize(name, state_name, full_report)
    @name = name
    @full_report = full_report
    @state_name = state_name
    Top30SkiResorts::States.find_or_create_by(state_name)
    add_resort
    add_to_state
  end
    
  def add_resort
    @@all_resorts << self
  end
  
  def self.all
    Top30SkiResorts::Scraper.scrape_resorts if @@all_resorts.empty?
    @@all_resorts
  end
  
  def add_to_state
    Top30SkiResorts::States.all.each do |state|
      if state.state_name == self.state_name
        state.resorts << self
      end 
    end
  end
end