class Top30SkiResorts::CLI
  
 def resorts
  puts "Where will you be skiing this year?"
  puts Top30SkiResorts::Scraper.scrape_resorts
 end
  
  
  
end
  
  
 