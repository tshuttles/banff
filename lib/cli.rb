require_relative "../lib/scraper.rb"
require_relative "../lib/banff.rb"
require 'nokogiri'

class CLI::Banff 
  
  def call 
    list_attractions 
    menu 
    goodbye
  end 
  
  def list_attractions
    puts "Hello! Here are Banff's greatest attractions."
    lists the attractions with scraper 
  end 
  
  def menu 
    input = nil 
    while input != "exit"
      puts "Enter the number of the attraction you are most interested in."
    lists the input code 
  end 
  
end 
