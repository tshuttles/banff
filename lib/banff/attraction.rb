class Attraction 
  
  attr_accessor :name, :type, :price, :url 
  
  @@attractions = []
  
  def initialize
  end 
  
  def self.all
    self.scrape_attraction
  end 
  
  
end 