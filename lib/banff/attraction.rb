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
    puts "Name:         #{attraction.name.upcase}"
    puts ""
    puts "Description:  #{attraction.description}"
    puts "Open Hours:   #{attraction.open_hours}"
    puts "Duration:     #{attraction.duration}"
    puts "Website:      #{attraction.url}"
    puts ""
  end
end 
 
 
 