#require "Beer_CLI/version"
require_relative "Scraper.rb"
require 'pry'



class Beer  
  attr_accessor :name, :brewery, :type, :abv
  @@all = []
  
 def initialize(name, brewery, type, abv)
    #binding.pry
    @name = name
    @brewery = brewery 
    @type = type
    @abv = abv
    @@all << self
  end 
  
 
  
  def self.all 
    @@all
  end 
  
  #create_from_scraper(collection)
  #binding.pry
  
end 