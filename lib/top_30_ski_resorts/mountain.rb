class Top30SkiResorts::Mountain
  
  attr_accessor :name, :state_name, :full_report
  
  @@all_resorts = []
  
  def initialize(name, state_name, full_report)
    @name = name
    @full_report = full_report
    @state = Top30SkiResorts::State.find_or_create_by(state_name)
    @state.resorts << self
    add_resort
  end
    
  def add_resort
    @@all_resorts << self
  end
  
  def self.all
    Top30SkiResorts::Scraper.scrape_resorts if @@all_resorts.empty?
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