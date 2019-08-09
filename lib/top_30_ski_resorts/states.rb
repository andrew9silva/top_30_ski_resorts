class Top30SkiResorts::States 
  
  attr_accessor :state_name 
  
  @@all_states = []
  
  def initialize(state_name)
    @state_name = state_name
    @@all_states
    @resorts = []
    @resorts << Top30SkiResorts::Mountain.all
    add_state
  end
  
  def add_state
    @@all_states << self
  end
  
  def self.all
    Top30SkiResorts::Scraper.scrape_states if @@all_states.empty?
    @@all_states
  end
  
  def self.find_or_create_by(state_name)
   if @@all_states.detect { |x| x.state_name == state_name }
     nil
   else
     self.new(state_name)
   end
  end
  
  def resorts
    @resorts
  end 
  
  def add_resorts(resort)
    if resort.state == nil 
      resort.state = self
    else 
      nil
    end
    if @resorts.include?(resort)
      nil 
    else
      @resorts << resort 
    end
    resort
  end 
    
end