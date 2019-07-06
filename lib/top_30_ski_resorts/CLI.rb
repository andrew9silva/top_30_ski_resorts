class Top30SkiResorts::CLI 
  
  def resorts
    puts "Are you going on a ski trip this year? (Y/N)"
    
    answer = gets.strip
    
    if answer == "Y"
      states
    elsif answer == "N"
      puts "Aww man that's no fun!"
    else answer != "Y" || answer != "N"
      puts "Sorry not sure what you are saying."
    end
  end
  
  def states
    puts "Where do you want to ski? California, Canada, Colorado, Montana, New Mexico, Utah, Wyoming."
    state = gets.strip
    
    case state
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
    end
  end
    
end