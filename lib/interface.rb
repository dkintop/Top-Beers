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
  
  
  def list_beers
    Beer.all.each_with_index do |beer_object, index|
      puts "#{index +1}. #{beer_object.name}"
    end
  end 
  
  def select_beer
    puts "Please enter the number of the beer you would like to know more about"
    input = gets.chomp.to_i
    if input >= 1 && input <= 50
      puts "--------------------------"
      puts "Good choice!"
      puts "Rank: #{input}"
      puts "Beer name: #{Beer.all[input - 1].name}"
      puts "Made by: #{Beer.all[input - 1].brewery}"
      puts "Type: #{Beer.all[input - 1].type}"
      puts "ABV: #{Beer.all[input - 1].abv}"
    else 
      puts "Please select a valid option"
      puts "All product information obtained by this application provided by https://www.beeradvocate.com/beer/top-rated/"
    end
  end 
  
  
  def script   
    puts "Top Beer Finder"
    puts "Welcome, before beginning please enter your age."
    age = gets.chomp.to_i 
    if age < 21 
    puts "Sorry, You must be of legal drinking age to use Top Beer Finder"
    else 
      input = nil
      while input != "exit"
        list_beers
        select_beer
        puts "To know more about a different beer on our list enter you're favorite word, to exit enter 'exit'"
        input = gets.chomp 
      end 
      puts "--------------------------"
      puts "Bye!"
      puts "All product information displayed by this application provided by https://www.beeradvocate.com/beer/top-rated/"
    end
  end 
  
  
end 

