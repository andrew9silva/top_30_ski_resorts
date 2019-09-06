class Top30SkiResorts::CLI
 def resorts
   
   puts "Do you want to ski one of the best resorts in North America? (Yes or No)".colorize(:green)
   input = gets.strip
   if input == "Yes"
     get_state
     choose_state
     state_options
     choose_resort
     
     
   elsif input == "No"
    puts "That's lame".colorize(:green)
   
   else
    puts "Not sure what you mean?".colorize(:green)
    resorts
   end
 end
 
 def restart 
   choose_state
   state_options
   
 end 
 
 def get_state
   Top30SkiResorts::Mountain.all
   Top30SkiResorts::States.all
 end 
 
 def choose_state
   puts "Which state will you be skiing in?".colorize(:green)
   Top30SkiResorts::States.all.each do |state|
     puts "#{state.state_name}".colorize(:light_blue)
   end
 end
 def state_options
   input = gets.strip
   @chosen_state = Top30SkiResorts::States.all.keep_if { |x| x.state_name == input }
   
   if Top30SkiResorts::States.all.each { |x| x.state_name == input }
     puts @chosen_state[0].resorts[0..-1].map(&:name).inspect
   else
     puts "Sorry that's not an option".colorize(:green)
     choose_state
   end
 end
 
 def choose_resort
   puts "Which resort do you want more information on?"
   input = gets.strip
   if  @chosen_state[0].resorts[0..-1].map.each(&:name).include?(input)
     puts "test"
   else
     nil 
   end
 end 
   
 
end

  
  
  
 