class Top30SkiResorts::CLI
  
 def resorts
   
   puts "Do you want to ski one of the best resorts in North America? (Yes or No)"
   input = gets.strip
   if input == "Yes"
     choose_state
     
   elsif input == "No"
    puts "That's lame"
   
   else
    puts "Not sure what you mean?"
    resorts
   end
 end
 
 def choose_state
   
   puts Top30SkiResorts::Scraper.scrape_states.uniq
   puts "Choose a place to see what resorts it has to offer:"
   
   @input = gets.strip
   
   if Top30SkiResorts::Scraper.scrape_states.uniq.any?{ |place| place == @input }
     puts Top30SkiResorts::Scraper.scrape_resorts.select{ |place| place[:location] == @input }
   else
     puts "That wasn't an option"
     choose_state
   end
  
 end
  
end
  
  
 