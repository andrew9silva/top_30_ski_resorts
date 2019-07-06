class Top30SkiResorts::CLI 
  
  def resorts
    puts "Are you going on a ski trip this year? (Y/N)"
    
    answer = gets.strip
    
    if answer == "Y"
      places
    elsif answer == "N"
      puts "Aww man that's no fun!"
    else 
      puts "Sorry not sure what you are saying."
    end
  end
  
  def places
    place = nil
    
    while place != "Done"
    puts "Where do you want to ski? California, Canada, Colorado, Montana, New Mexico, Utah, Wyoming."
    place = gets.strip
    
     case place
     when "California"
       puts "california_array"
     when "Canada"
       puts "canada_array"
     when "Colorado"
       puts "colorado_array"
     when "Montana"
       puts "montana_array"
     when "New Mexico"
       puts "new_mexico_array"
     when "Utah"
       puts "utah_array"
     when "Wyoming"
       puts "wyoming_array"
     else 
       puts "I guess there aren't any awesome resorts there..."
     end
   end
  end
end