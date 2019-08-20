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
   resort_selection
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
   
   if input == 
     puts Top30SkiResorts::Mountain.all.inspect
   else
     puts "Sorry that's not an option".colorize(:green)
     choose_state
   end
 end
 
 def resort_selection
   input = gets.strip.to_i
   
   if Top30SkiResorts::States.all.map.each(&:resorts).uniq[0][0].select { |x| x.name == input }
    puts Top30SkiResorts::States.all.map.each(&:resorts).uniq[0][0].collect { |x| x.full_report }[input - 1].colorize(:light_blue)
   else
    puts "That wasn't an option"
    choose_state
   end
   puts "Do you want to select another? (Yes or No)".colorize(:green)
   input = gets.strip
   if input == "Yes"
    restart
   elsif input == "No"
    puts "See ya next time!" 
   else 
    puts "Pick the number of the resort you want more information on.".colorize(:green) 
    resort_selection
  end 
 end 
end

  
  
  
 