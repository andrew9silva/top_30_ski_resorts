class Top30SkiResorts::Mountain
  
  attr_accessor :name, :state_name, :full_report
  
  @@all_resorts = []
  
  def initialize(name, state_name, full_report)
    @name = name
    @state_name = state_name
    @full_report = full_report
    add_to_state
    add_resort
  end
  
  def add_to_state
    Top30SkiResorts::States.resorts << self unless Top30SkiResorts::States.resorts.include?(self)
  end 
    
  def add_resort
    @@all_resorts << self
  end
  
  def self.all
    @@all_resorts
  end
  
end