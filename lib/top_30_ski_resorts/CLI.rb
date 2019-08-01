class Top30SkiResorts::CLI
  
 def resorts
   
   puts "Do you want to ski one of the best resorts in North America? (Yes or No)"
   input = gets.strip
   if input == "Yes"
     get_state
     choose_state
     choose_resort
     
     
   elsif input == "No"
    puts "That's lame"
   
   else
    puts "Not sure what you mean?"
    resorts
   end
 end
 
 def get_state
   binding.pry
   Top30SkiResorts::States.all
 end 
 
 def choose_state
   puts "Which state will you be skiing in?"
   Top30SkiResorts::States.all.map(&:state_name).uniq.each do |state|
     puts "#{state}."
   end
 end
end
  
  
  
 