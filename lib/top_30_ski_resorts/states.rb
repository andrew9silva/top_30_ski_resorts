class Top30SkiResorts::States 
  
  attr_accessor :state_name 
  
  @@all_states = []
  
  def initialize(state_name)
    @state_name = state_name
    @mountains = []
    add_state
    @@all_states
  end
  
  def add_state
    @@all_states << self
  end
  
  def self.all
    @@all_states
  end
  
  def self.find_or_create_by(state_name)
   if @@all_states.detect { |x| x.state_name == state_name }
     nil
   else
     self.new(state_name)
   end
  end
  
  def self.mountains
    @mountains
  end 
  
    
end