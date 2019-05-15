class CLI
  
  def call 
    list_attractions 
    menu 
    goodbye
  end 
  
  def list_attractions
    puts "Hello! Here are Banff's greatest attractions." 
    # lists the attractions with scraper 
  end 
  
  def menu 
    input = nil 
    while input != "exit"
      puts "Enter the number of the attraction you are most interested in, or type exit to exit."
    # lists the input code 
    end 
  end 
  
  def goodbye
    puts "Thank you! We hope to see you return soon for more information on Banff's world-class attractions!"
  end 
  
end 
