class Banff::Scraper 
  
  def self.attractions 
    doc = Nokogiri::HTML(open("https://www.tripadvisor.com/Attractions-g154911-Activities-Banff_Banff_National_Park_Alberta.html"))
    
    doc.css("#FILTERED_LIST li").each.with_index(1) do |doc, index|
      name = doc.css("a")[2].text
      url = doc.css("a")[0].attr("href")
      attraction = Banff::Attraction.new(name, url, index)
    end
  end
  
  def self.attraction(attraction)
    doc = Nokogiri::HTML(open("https://www.tripadvisor.com#{attraction.url}"))
    
    description = doc.css("#taplc_location_detail_about_card_0")[0].css("span")[0].text
    open_hours = doc.css("#taplc_location_detail_about_card_0")[0].css("div")[6].text
    duration = doc.css("#taplc_location_detail_about_card_0")[0].css("div")[9].text 
    
    if description
      attraction.description = description
    else
      attraction.description = "No information"
    end
    if open_hours
      attraction.open_hours = open_hours
    else
      attraction.open_hours = "No information"
    end
    if duration 
      attraction.duration = duration
    else
      attraction.duration = "No information"
    end
  end 
end 


  # def get_page 
  #   Nokogiri::HTML(open("https://www.tripadvisor.com/Attractions-g154911-Activities-Banff_Banff_National_Park_Alberta.html"))
  # end 
  
  # def scrape_attraction_list
  #   self.get_page.css("#FILTERED_LIST li")
  # end 
  
  # def make_attractions
  #   scrape_attraction_list.each do |doc|
  #     Banff::Attraction.new_from_list_page(doc)
  #   end
  # end
# end 



  # def self.scrape
  #   attraction = [] 
  #   attraction << self.scrape_attraction
  #   attraction 
    
    
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
#   end 
  
#   def self.scrape_attraction
#     doc = Nokogiri::HTML(open("https://www.tripadvisor.com/Attractions-g154911-Activities-Banff_Banff_National_Park_Alberta.html"))
#     attraction = self.new 
#     binding.pry 
#     attraction.name = doc.css("#FILTERED_LIST li")[0].css("a")[2].text
#     attraction.type = doc.css("#FILTERED_LIST li")[0].css("span")[9].text
#     attraction.price = doc.css("#FILTERED_LIST li")[0].css("span")[13].text
#     attraction.url = doc.css("#FILTERED_LIST li")[0].css("a")[2].attr("href")
    
#     attraction 
#   end 