class Top30SkiResorts::CLI
  
 def resorts
   
   puts "Are you going on a ski trip this year? (Yes or No)"
   input = gets.strip
   if input == "Yes"
    puts Top30SkiResorts::Scraper.scrape_resorts
  
   elsif input == "No"
    puts "That's lame"
   
   else
    puts "Not sure what you mean?"
    resorts
   end
 end
  
  
  
end
  
  
 