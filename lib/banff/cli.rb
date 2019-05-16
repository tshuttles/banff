class CLI
  
  def call 
    list
    menu 
    goodbye
  end 
  
  def list
    # lists the attractions with scraper 
    puts "Hello! Here are Banff's greatest attractions." 
    @attractions = Attraction.all 
  end 
  
  def menu 
    input = nil 
    while input != "exit"
      puts "Enter the number of the attraction you are most interested in, or type in list to see the options again, or type exit."
      input = gets.strip.downcase 
      
      if input.to_i > 0 
        puts @attractions[input.to_i-1]
      elsif input == "list" 
        list 
      else 
        puts "Invalid entry. Please type a number for information on an attraction, 'list', or 'exit'."
      end 
    end 
  end 
  
  def goodbye
    puts "Thank you! We hope to see you return soon for more information on Banff's world-class attractions!"
  end 
  
end 
