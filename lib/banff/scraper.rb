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
    
    description = doc.css("#taplc_location_detail_about_card_0")[0].css("span")[0]
    open_hours = doc.css("#taplc_location_detail_about_card_0")[0].css("div")[6]
    duration = doc.css("#taplc_location_detail_about_card_0")[0].css("div")[9] 
    
    if description
      attraction.description = description.text
    else
      attraction.description = "No information"
    end
    if open_hours
      attraction.open_hours = open_hours.text
    else
      attraction.open_hours = "No information"
    end
    if duration 
      attraction.duration = duration.text
    else
      attraction.duration = "No information"
    end
  end 
end 


