class Attraction 
  
  attr_accessor :name, :type, :price, :url, :description, :open_hours, :duration
  
  @@all = []
  
  def initialize(name=nil, type=nil, price=nil, url=nil)
    @name = name 
    @type = type 
    @price = price 
    @url = url 
  end 
  
  def self.all
    @attractions
  end 
  
  def attraction(attraction) 
    attraction = Attraction.new 
    attraction.name = 
    attraction.type = 
    attraction.price = 
    attraction.url = "https://www.tripadvisor.com/Attractions-g154911-Activities-Banff_Banff_National_Park_Alberta.html"
    [attraction]
  end 	 
  
  # def self.new_from_list_page(doc)
  #   self.new(
  #     doc.css("#FILTERED_LIST li")[0].css("a")[2].text,
  #     doc.css("#FILTERED_LIST li")[0].css("span")[9].text,
  #     doc.css("#FILTERED_LIST li")[0].css("span")[13].text,
  #     doc.css("#FILTERED_LIST li")[0].css("a")[2].attr("href")
  #   )
  # end
  
  # def initialize(name=nil, type=nil, price=nil, url=nil)
  #   @name = name
  #   @type = type 
  #   @price = price 
  #   @url = url
  #   @@all << self
  # end 
  
  # def self.all
  #   @@all 
  # end 
  
  # def self.find(id)
  #   self.all[id-1]
  # end
  
  # def doc
  #   @doc ||= Nokogiri::HTML(open(self.url))
  # end
  
  # def description 
  #   @description ||= doc.css("#taplc_location_detail_about_card_0")[0].css("span")[0].text 
  # end 
  
  # def open_hours 
  #   @open_hours ||= doc.css("#taplc_location_detail_about_card_0")[0].css("div")[6].text 
  # end 
  
  # def duration 
  #   @duration ||= doc.css("#taplc_location_detail_about_card_0")[0].css("div")[9].text
  # end 
  
end 