class Top30SkiResorts::Mountain
  
  attr_accessor :name, :state_name, :full_report
  
  @@all_resorts = []
  
  def initialize(name, state_name, full_report)
    @name = name
    @state_name = state_name
    @full_report = full_report
    @@all_resorts
    add_resort
  end
    
  def add_resort
    @@all_resorts << self
  end
  
  def self.all
    @@all_resorts
  end
  
  def self.create(name)
    self.new(name).tap do |mountain|
      mountain.add_resort
    end
  end 
  
  def self.find_by_name(name)
    @@all_resorts.detect do |mountain|
      if mountain.name == name
        mountain
      else
        nil 
      end
    end
  end
  
end