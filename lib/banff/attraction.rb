class Attraction 
  
  attr_accessor :name, :type, :price, :url 
  
  @@attractions = []
  
  def initialize
  end 
  
  def self.all
    @@attractions
  end 
  
  
end 