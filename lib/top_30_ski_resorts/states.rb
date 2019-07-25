class Top30SkiResorts::States 
  
  attr_accessor :state, :resorts
  
  @@all_states = []
  
  def initialize(state, resorts)
    @state = state
    @resorts = []
  end
  
  def save
    @@all_states << self
  end
end