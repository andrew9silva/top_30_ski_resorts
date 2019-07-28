class Top30SkiResorts::States 
  
  attr_accessor :state
  
  @@all_states = []
  
  def initialize(state)
    @state = state
    add_state
  end
  
  def add_state
    @@all_states << self
  end
  
  def self.all 
    @@all_states
  end
end