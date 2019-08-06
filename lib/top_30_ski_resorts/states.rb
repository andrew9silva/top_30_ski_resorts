class Top30SkiResorts::States 
  
  attr_accessor :state_name 
  
  @@all_states = []
  
  def initialize(state_name)
    @state_name = state_name
    @@all_states
    @resorts = []
    add_state
  end
  
  def add_state
    @@all_states << self
  end
  
  def self.all
    @@all_states
  end
  
  def self.create(state_name)
    self.new(state_name).tap do |state|
      state.save
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