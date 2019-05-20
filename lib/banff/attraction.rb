class Banff::Attraction 
  
  attr_accessor :name, :url, :index, :description, :open_hours, :duration
  
  @@all = []
  
  def initialize(name, url, index)
    @name = name
    @url = url
    @index = index 
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  def self.find_attraction(x)
    self.all.find{|doc| doc.index == x}
  end
  
  def self.print_attractions
    self.all.each do |doc|
      puts "#{doc.index}. #{doc.name}"
    end 
  end 
  
  def self.display_attraction(attraction)
    puts ""
    puts "              #{attraction.name.upcase}"
    puts "Description:  #{attraction.description}"
    puts "Open Hours:   #{attraction.open_hours}"
    puts "Duration:     #{attraction.duration}"
    puts "Website:      #{attraction.url}"
    puts ""
  end
end 
  
  
  # def self.new_from_list_page(doc)
  #   self.new(
  #     doc.css("a")[2].text,
  #     doc.css("span")[9].text, 
  #     doc.css("a")[2].attr("href")
      
  #     # doc.css("#FILTERED_LIST li")[0].css("a")[2].text,
  #     # doc.css("#FILTERED_LIST li")[0].css("span")[9].text,
  #     # doc.css("#FILTERED_LIST li")[0].css("span")[13].text, ***Had to remove price
  #     # doc.css("#FILTERED_LIST li")[0].css("a")[2].attr("href")
  #   )
  # end
  
  
#   def self.find(id)
#     self.all[id-1]
#   end
  
#   def doc
#     @doc ||= Nokogiri::HTML(open(self.url))
#   end
  
#   def description 
#     @description ||= doc.css("#taplc_location_detail_about_card_0")[0].css("span")[0].text 
#   end 
  
#   def open_hours 
#     @open_hours ||= doc.css("#taplc_location_detail_about_card_0")[0].css("div")[6].text 
#   end 
  
#   def duration 
#     @duration ||= doc.css("#taplc_location_detail_about_card_0")[0].css("div")[9].text
#   end 
  
# end 