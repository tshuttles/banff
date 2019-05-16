class Scraper 
  
  def self.scrape
    attraction = [] 
    attraction << self.scrape_attraction
   
    attraction 
    
    
    # attraction = Attraction.new 
    # attraction.name = 
    # attraction.type = 
    # attraction.price = 
    # attraction.url = "https://www.tripadvisor.com/Attractions-g154911-Activities-Banff_Banff_National_Park_Alberta.html"
    # [attraction]
    
    
    doc = Nokogiri::HTML(open("https://www.tripadvisor.com/Attractions-g154911-Activities-Banff_Banff_National_Park_Alberta.html"))
    # attractions = [] 
    
    # doc.css("").each do |attractions| 
    #   attractions_hash = {
    #     :name => attractions.css("").
    #     :type => attractions.css("").
    #     :price => attractions.css("").
    #   }
    #     attractions << attractions_hash 
    # end 
    # attractions
  end 
  
  def self.scrape_attraction
    doc = Nokogiri::HTML(open("https://www.tripadvisor.com/Attractions-g154911-Activities-Banff_Banff_National_Park_Alberta.html"))
    name = 
    type = 
    price = 
  end 
end 