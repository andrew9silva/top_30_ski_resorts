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
      resorts
    end
  end
  
  
  def places
    place = nil
    
    while place != "Done"
    puts "Where do you want to ski? Alaska, California, Canada, Colorado, Montana, New Mexico, Utah, Wyoming."
    place = gets.strip
    
     case place
     when "Alaska"
       Top30SkiResorts::Resorts.alaska
     when "California"
       Top30SkiResorts::Resorts.california
     when "Canada"
       puts "canada_array"
     when "Colorado"
       Top30SkiResorts::Resorts.colorado
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