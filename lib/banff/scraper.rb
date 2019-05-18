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
    
    
    # doc = Nokogiri::HTML(open("https://www.tripadvisor.com/Attractions-g154911-Activities-Banff_Banff_National_Park_Alberta.html"))
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
    attraction = self.new 
    binding.pry 
    attraction.name = doc.css("#FILTERED_LIST li")[0].css("a")[2].text
    attraction.type = doc.css("#FILTERED_LIST li")[0].css("span")[9].text
    attraction.price = doc.css("#FILTERED_LIST li")[0].css("span")[13].text
    attraction.url = 
    
    attraction 
  end 
end 