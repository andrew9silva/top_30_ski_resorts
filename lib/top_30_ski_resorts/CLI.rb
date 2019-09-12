class Top30SkiResorts::CLI
 def resorts
   
   puts "Do you want to ski one of the best resorts in North America? (Yes or No)".colorize(:green)
   input = gets.strip
   if input == "Yes"
     get_state
     choose_state
     state_options
     
   elsif input == "No"
    puts "That's lame".colorize(:green)
   
   else
    puts "Not sure what you mean?".colorize(:green)
    resorts
   end
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
   state_options
 end
 def state_options
   input = gets.strip
   @chosen_state = Top30SkiResorts::States.all.detect { |x| x.state_name == input } 

   if @chosen_state
     @chosen_state.resorts.each { |x| puts x.name.colorize(:red) }
     choose_resort
   else 
     puts "Sorry that's not an option".colorize(:green)
     choose_state
   end
 end
 
 def choose_resort
   puts "Which resort do you want more information on?".colorize(:green)
   input = gets.strip
   @chosen_resort = @chosen_state.resorts.detect { |x| x.name == input }
   if  @chosen_resort
     puts @chosen_resort.full_report.colorize(:light_blue)
     finished?
   else
     puts "That isn't an option".colorize(:green)
     choose_resort
   end
   
 end 
   
 def finished?
   puts "Do you want to check out any more resorts? (Yes or No)".colorize(:green)
   input = gets.strip
   
   if input == "Yes"
    get_state
    choose_state
    state_options
     
   elsif input == "No"
   puts "See ya next time!".colorize(:green)
   exit 
   else 
     puts "What are you trying to say?".colorize(:green)
     finished?
   end 
   
 end 
 
end

  
  
  
 