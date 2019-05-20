class Banff::CLI
  
  def call 
    welcome
    Banff::Scraper.attractions
    Banff::Attraction.print_attractions
    start 
  end 
  
  def welcome 
    puts "" 
    puts "Hello! Here are Banff's greatest attractions!" 
    puts ""
    puts "Enter the number of the attraction you are interested in, for more information."
    puts "" 
  end 
  
  def start
    input = ""
      while input != "exit" do
        input = gets.strip.downcase       
        if (1..30).include?(input.to_i)                           
          
          attraction = Banff::Attraction.find_attraction(input.to_i)
          Banff::Scraper.attraction(attraction)
          Banff::Attraction.display_attraction(attraction)
          
          puts ""
          puts "Type 'list' to view the attractions again, or type 'exit'."
          puts "" 
        elsif input == "list"
          puts ""
          puts "Enter the number located next to the attraction you would like details on: "
          puts ""
          Banff::Attraction.print_attractions
        elsif input != "exit"
          puts "" 
          puts "Invalid entry. Please type a number for information on an attraction, 'list', or 'exit'."
          puts ""
        end
      end    
  end
end
  
  
  