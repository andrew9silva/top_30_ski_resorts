class Top30SkiResorts::Mountain
  
  attr_accessor :name, :state, :full_report
  
  @@all_resorts = []
  
  def initialize(name, state, full_report)
    @name = name
    @state = state
    @full_report = full_report
    add_resort
  end
  
  def add_resort
    @@all_resorts << self
  end
  
  def self.all
    @@all_resorts
  end
  
end