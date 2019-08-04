class Top30SkiResorts::CLI
  
 def resorts
   
   puts "Do you want to ski one of the best resorts in North America? (Yes or No)"
   input = gets.strip
   if input == "Yes"
     get_state
     choose_state
     state_options
     
     
     
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
 
 def state_options
   input = gets.strip
   if Top30SkiResorts::States.all.any? { |x| x.state_name == input }
     puts "Choose a resort"
     puts "Test Success" #want @resorts array returning here.
   else
     puts "Sorry that's not an option"
     state_options
   end
 end
   
end

  
  
  
 