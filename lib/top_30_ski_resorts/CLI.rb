class Top30SkiResorts::CLI
  
 def resorts
   
   puts "Do you want to ski one of the best resorts in North America? (Yes or No)"
   input = gets.strip
   if input == "Yes"
    puts Top30SkiResorts::Scraper.scrape_states.uniq
    puts "Select a state:"
    choose_state
  
   elsif input == "No"
    puts "That's lame"
   
   else
    puts "Not sure what you mean?"
    resorts
   end
 end
 
 def choose_state
   input = gets.strip
   case 
   when input == Top30SkiResorts::Scraper.scrape_resorts[:location]
     puts Top30SkiResorts::Scraper.scrape_resorts
   else
     nil 
   end
 end
  
end
  
  
 