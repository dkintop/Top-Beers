require 'nokogiri'
require 'pry'
require 'open-uri'

#scrape beer advocate.com top 250 list
#get each beer instance listed into an array

class Scraper 
  #get array of hashes. each hash relates to one beer on the top 250 list with hash keys to include  name, brewery, type, avg rating, number of ratings
  
  
  def self.scrape_250_list
    doc = Nokogiri::HTML(open('https://www.beeradvocate.com/beer/top-rated/'))
    beers = []
    
    
      
    
    
  end 
  
end 


doc = Nokogiri::HTML(open('https://www.beeradvocate.com/beer/top-rated/'))
doc.css("").text
    binding.pry
    
    
    
    #entire table = doc.css("#ba-content > table")
    #binding.pry
    