class Top30SkiResorts::CLI 
  
  def resorts
    puts "Going on a ski trip this year? Y/N?"
    
    case
    when "Y"
      states_array
      
    else
      "Too bad, you're missing out!"
    end
  end
  
  def states_array
    puts "which state do you want to ski in?"
  
  end
    
end