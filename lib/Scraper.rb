require 'nokogiri'
require 'pry'
require 'open-uri'




class Scraper 
  #get array of hashes. each hash relates to one beer on the top 250 list with hash keys to include  name, brewery, type, 

  
  #def self.ba_scrape
    doc = Nokogiri::HTML(open('https://www.beeradvocate.com/beer/top-rated/'))
    all_beers_xml_array = doc.search(".hr_bottom_light[@align='left']")       #returns array of xml elemts, each correlating with a specific beer.
    
    
    all_beers_xml_array.each do|beer| 
      beer_name = beer.css('a b').text
      brewery = beer.css('span.muted a').first.text
      type = beer.css('span.muted a')[1].text
      binding.pry
    end
    
 # end 
   
  
   
   
end 



   
    #all beers XML array = doc.search(".hr_bottom_light[@align='left']")
    #entire table = doc.css("#ba-content > table")
    #binding.pry
    