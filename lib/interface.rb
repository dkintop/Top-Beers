require_relative 'Beer.rb'
require_relative 'Scraper.rb'
require 'nokogiri'
require 'pry'

class Interface 
  def run
    create_beer_objects
    script
  end 
  
  def create_beer_objects
  Scraper.scrape 
  end
  
  
  def age_verifier
    puts "Top Beer Finder"
    puts "Welcome, before beginning please enter your age."
    age = gets.chomp.to_i 
    if age < 21 
    puts "Sorry, You must be at least 21 years old to use Top Beer Finder"
    puts "Program will self destruct in 5 seconds"
    sleep(5)
    end
    age 
  end 
  
  
  def list_beers
    Beer.all.each_with_index do |beer_object, index|
      puts "#{index +1}. #{beer_object.name}"
    end
  end 
  
  def choice_messages
    ["Good choice!", "Nice pick!", "That's a good one!", "Great! Here you go!", "One of the best!"]
  end 
  
  
  def select_beer
    puts "---------------------------------------------------------------------"
    puts "Please enter the number of the beer you would like to know more about"
    input = gets.chomp.to_i
    if input >= 1 && input <= Beer.all.length
      puts "---------------------------------------------------------------------"
      puts choice_messages.sample
      puts "Rank: #{input}"
      puts "Beer name: #{Beer.all[input - 1].name}"
      puts "Made by: #{Beer.all[input - 1].brewery}"
      puts "Type: #{Beer.all[input - 1].type}"
      puts "ABV: #{Beer.all[input - 1].abv}"
      puts "---------------------------------------------------------------------"
    else 
      puts "Please select a valid option"
    end
  end 
  
  
  def script   
    if age_verifier >= 21
      input = nil
      while input != "exit"
        puts "---------------------------------------------------------------------"
        puts "Top 50 craft beers"
        puts "---------------------------------------------------------------------"
        list_beers
        select_beer
        puts "To know more about a different beer on our list press enter, to exit type 'exit' and press enter."
        input = gets.chomp 
      end 
      puts "---------------------------------------------------------------------"
      puts "Bye!"
      puts "All product information displayed by this application provided by:" 
      puts "https://www.beeradvocate.com/beer/top-rated/"
    end
  end 
end 

