require 'nokogiri'
require 'pry'
require 'open-uri'




class Scraper 
  #get array of hashes. each hash relates to one beer on the top 250 list with hash keys to include  name, brewery, type, 

  
 # def self.scrape
    doc = Nokogiri::HTML(open('https://www.beeradvocate.com/beer/top-rated/'))
    all_beers = doc.search(".hr_bottom_light[@align='left']" #span.muted)  #I only want every 4th element and the first element in this.
    beer_list = []
    beer_hash = {}
    #binding.pry
    all_beers.each do|beer| 
      
      beer_hash[:name] = beer.css('a b').text
      beer_hash[:brewery] = beer.css('span.muted a').first.text
      beer_hash[:type] = beer.css('span.muted a')[1].text
      beer_hash[:abv] = beer.css('span').text.split("|")[1].strip
      beer_list << beer_hash
      
      binding.pry
    end
    beer_list
  #end 
   
  
   
   
end 



   
    #all beers XML array = doc.search(".hr_bottom_light[@align='left']")
    #entire table = doc.css("#ba-content > table")
    #binding.pry




   
  
    