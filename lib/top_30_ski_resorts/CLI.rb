class Top30SkiResorts::CLI 
  
  def resorts
    puts "Are you going on a ski trip this year? (Y/N)"
    
    if "Y"
      states
    else
      "Aww man that's no fun!"
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
    end
  end
    
end