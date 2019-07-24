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
     when "Done"
       puts "Maybe next time."
     when "Alaska"
       print Top30SkiResorts::Mountain.alaska
     when "California"
       print Top30SkiResorts::Mountain.california
     when "Canada"
       print Top30SkiResorts::Mountain.canada
     when "Colorado"
       print Top30SkiResorts::Mountain.colorado
     when "Montana"
       print Top30SkiResorts::Mountain.montana
     when "New Mexico"
       print Top30SkiResorts::Mountain.new_mexico
     when "Utah"
       print Top30SkiResorts::Mountain.utah
     when "Wyoming"
       print Top30SkiResorts::Mountain.wyoming
     else 
       puts "I guess there aren't any awesome resorts there..."
     end
   end
  end
end