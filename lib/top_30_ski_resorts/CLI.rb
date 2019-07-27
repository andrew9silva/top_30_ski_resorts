class Top30SkiResorts::CLI
  
 def greeting
  puts "Where will you be skiing this year?"
  Top30SkiResorts::Scraper.scrape_resorts
 end
  
  
  
end
  
  
 