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
       Top30SkiResorts::Resorts.canada
     when "Colorado"
       Top30SkiResorts::Resorts.colorado
     when "Montana"
       Top30SkiResorts::Resorts.montana
     when "New Mexico"
       Top30SkiResorts::Resorts.new_mexico
     when "Utah"
       Top30SkiResorts::Resorts.utah
     when "Wyoming"
       Top30SkiResorts::Resorts.wyoming
     else 
       puts "I guess there aren't any awesome resorts there..."
     end
   end
  end
end