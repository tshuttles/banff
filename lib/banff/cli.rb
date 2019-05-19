class CLI
  
  def call 
    # binding.pry
    Scraper.new.make_attractions 
    start 
    
    # list
    # menu 
    # goodbye
  end 
  
  def start 
    puts ""
    puts "Hello! Here are Banff's greatest attractions." 
    input = gets.strip.to_i
    
    print_attractions(input)
    
    puts ""
    puts "Which attraction would you like more information on?"
    input = gets.strip
    
    attraction = Attraction.find(input.to_i)

    print_attraction_info(attraction)

    puts ""
    puts "Would you like to see another attraction? Enter y or n"

    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts ""
      puts "Thank you! We hope you have a wonderful time in Banff!"
      exit
    else
      puts ""
      puts "Invalid input. Let us restart."
      start
    end
  end
  
  def print_attractions(from_number)
    puts ""
    puts "------ Attractions #{from_number} - #{from_number+14} ------"
    puts ""
    Attraction.all[from_number-1, 15].each.with_index(from_number) do |attraction, x|
      puts "#{x}. #{attraction.name} - #{attraction.type} - #{attraction.price}"
    end
  end
  
  def print_attraction_info(attraction)
    puts ""
    puts "------------------ #{attraction.name} ------------------"
    puts ""
    puts "Type:             #{attraction.type}"
    puts "Price:            #{attraction.price}"
    puts "Description:      #{attraction.description}"
    puts "Open Hours:       #{attraction.open_hours}"
    puts "Duration:         #{attraction.duration}"
    puts "Website:          #{attraction.url}"
    puts ""
  end
end
  
  # def list
  #   # lists the attractions with scraper 
  #   puts ""
  #   puts "Hello! Here are Banff's greatest attractions." 
  #   @attractions = Attraction.all 
  #   @attractions.each.with_index do |attraction, x|
  #     puts "#{x}. #{attraction.name} - #{attraction.type} - #{attraction.price}"
  #   end 
  # end 
  
  # def menu 
  #   input = nil 
  #   while input != "exit"
  #     puts "" 
  #     puts "Enter the number of the attraction you are most interested in, or type in list to see the options again, or type exit."
  #     input = gets.strip.downcase 
      
  #     if input.to_i > 0 
  #       the_attraction = @attractions[input.to_i-1]
  #       puts "#{attraction.name} - #{attraction.type} - #{attraction.price}"
  #     elsif input == "list" 
  #       list 
  #     else 
  #       puts "" 
  #       puts "Invalid entry. Please type a number for information on an attraction, 'list', or 'exit'."
  #       menu 
  #     end 
  #   end 
  # end 
  
  # def goodbye
  #   puts "" 
  #   puts "Thank you! We hope to see you return soon for more information on Banff's world-class attractions!"
  #   exit 
  # end 
# end 
