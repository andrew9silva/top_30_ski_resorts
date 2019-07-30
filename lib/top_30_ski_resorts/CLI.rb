class Top30SkiResorts::CLI
  
 def resorts
   
   puts "Do you want to ski one of the best resorts in North America? (Yes or No)"
   input = gets.strip
   if input == "Yes"
     choose_state
     
     
   elsif input == "No"
    puts "That's lame"
   
   else
    puts "Not sure what you mean?"
    resorts
   end
 end
 
 def gather_states
   Top30SkiResorts::States.all
 end 
   
 
 def self.choose_state
   puts "Which state will you be skiing in?"
   puts Top30SkiResorts::States.all 
 end
  
end
  
  
 