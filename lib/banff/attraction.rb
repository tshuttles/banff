class Attraction 
  
  attr_accessor :name, :type, :price 
  
  @@attractions = []
  
  def initialize
  end 
  
  def self.all
    @attractions
  end 
  
end 