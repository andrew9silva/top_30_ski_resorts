class Top30SkiResorts::States 
  
  attr_accessor :state_name 
  
  @@all_states = []
  
  def initialize(state_name)
    @state_name = state_name
    @resorts = []
    add_state
    add_resort
  end
  
  def add_state
    @@all_states << self
  end
  
  def self.all
    @@all_states
  end
  
  def self.find_or_create_by(state_name)
   if @@all_states.detect { |x| x.state_name == state_name }
     self
   else
     self.new(state_name)
   end
  end
  
  def add_resort
    Top30SkiResorts::Mountain.all.each do |mountain|
      if mountain == Top30SkiResorts::States.all.each { |state| state.state_name }
        @resorts << mountain 
      else
        nil 
      end
    end
    @resorts 
  end 
end