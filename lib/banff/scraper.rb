require 'open-uri'
require 'nokogiri'
require 'pry'

require_relative './banff.rb'

class Scraper 
  
  def self.scrape_attractions(url)
    doc = Nokogiri::HTML(open(url))
    attractions = [] 
    
    doc.css("").each do |attractions| 
      attractions_hash = {
        :name => attractions.css("").
        :type => attractions.css("").
        :price => attractions.css("").
      }
        attractions << attractions_hash 
    end 
    attractions
end 