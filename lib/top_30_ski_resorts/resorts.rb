class Top30SkiResorts::Resorts 
  
  attr_accessor :name :state :full_report
  
  @@all_resorts = []
  
  def initialize(name, state, full_report)
    @name = name
    @state = state
    @full_report = full_report
  end
  
  def add_resort
    @@all_resorts << self
  end
  
  def self.all
    @@all_resorts
  end
  
end