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
   Top30SkiResorts::States.all
 end 
 
 def choose_state
   puts "Which state will you be skiing in?"
   Top30SkiResorts::States.all.map(&:state_name).uniq.each do |state|
     puts "#{state}."
   end
 end
 
 def choose_state
   input = gets.strip
   if Top30SkiResorts::States.all.each { |x| x.state_name == input }
     puts "Choose a resort"
     puts #want @resorts array returning here.
   else
     puts "test fail"
   end
 end
 
 def resort_selection
   
   
end

  
  
  
 