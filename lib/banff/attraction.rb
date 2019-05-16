class Attraction 
  
  attr_accessor :name, :type, :price, :url 
  
  @@attractions = []
  
  def initialize
  end 
  
  def self.all
    attraction = Attraction.new 
    attraction.name = 
    attraction.type = 
    attraction.price = 
    attraction.url = "https://www.tripadvisor.com/Attractions-g154911-Activities-Banff_Banff_National_Park_Alberta.html"
    [attraction]
  end 
  
end 