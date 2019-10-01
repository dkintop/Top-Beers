#require "Beer_CLI/version"
require_relative "Scraper.rb"
require 'pry'




class Beer :: Scraper 
  attr_accessor :name, :brewery, :type, :abv
  @@all = []
  
  collection = Scraper.scrape
  
  def initialize(beer_hash)
    @name = beer_hash[:name]
    @brewery = beer_hash[:brewery] 
    @type = beer_hash[:type] 
    @abv = beer_hash[:abv]
    @@all << self
  end 
  
  def create_from_scraper(collection)
    collection.each do|beer|
      new beer = Beer.new(beer)
    end 
  end
  
  create_from_scraper(collection)
  binding.pry
  
  
end 