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
  
  def self.find_or_create_by(state_name)
   if @@all_states.detect { |x| x.state_name == state_name }
     nil
   else
     self.new(state_name)
   end
  end
  
  def self.resorts
    @resorts
  end 
  
  def add_resorts(resort)
    if @resorts.include?(resort)
      nil 
    else
      @resorts << resort 
    end
    resort
  end 
    
end