class Attraction 
  
  attr_accessor :name, :type, :price, :url, :description, :open_hours, :duration
  
  @@all = []
  
  def self.new_from_index_page(doc)
    self.new(
      doc.css("#FILTERED_LIST li")[0].css("a")[2].text,
      doc.css("#FILTERED_LIST li")[0].css("span")[9].text,
      doc.css("#FILTERED_LIST li")[0].css("span")[13].text,
      doc.css("#FILTERED_LIST li")[0].css("a")[2].attr("href")
      )
  end
  
  def initialize(name=nil, type=nil, price=nil, url=nil)
    @name = name
    @type = type 
    @price = price 
    @url = url
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  
end 