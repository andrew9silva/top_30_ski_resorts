class Top30SkiResorts::CLI
 def resorts
   
   puts "Do you want to ski one of the best resorts in North America? (Yes or No)".colorize(:green)
   input = gets.strip
   if input == "Yes"
     get_state
     choose_state
     state_options
     resort_selection
     
     
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
   #resort_selection
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
   chosen_state = Top30SkiResorts::States.all.keep_if { |x| x.state_name == input }
   
   if Top30SkiResorts::States.all.each { |x| x.state_name == input } 
     puts chosen_state[2].to_s
   else
     puts "Sorry that's not an option".colorize(:green)
     choose_state
   end
 end
 
end

  
  
  
 