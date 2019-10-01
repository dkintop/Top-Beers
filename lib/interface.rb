require_relative 'Beer.rb'
require_relative 'Scraper.rb'
require 'nokogiri'
require 'pry'
#sets class used for initializing the interface. refer to student scraper lesson when needed.

class Interface 
  def run
    create_beer_objects
    script
  end 
  
  def create_beer_objects
  Scraper.scrape 
  end
  
  #welcome message that prompts user for age before proceeding
  #list of 50 beers, then prompt user for input on beer they would like information from 
  #display information
  #asks the user if they would like to select another beer, exit if not.
  
  
  
  
  def script   
    puts "Top Beer Finder"
    puts "Welcome, before beginning please enter your age."
    age = gets.chomp.to_i 
    if age < 21 
    puts "Sorry, You must be of legal drinking age to use Top Beer Finder"
    else 
      list_beers
    end
  end 
  
  
end 

Interface.new.run