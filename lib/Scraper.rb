require 'nokogiri'
require 'pry'
require 'open-uri'




class Scraper 
  #get array of hashes. each hash relates to one beer on the top 250 list with hash keys to include  name, brewery, type, avg rating, number of ratings
  
  
  def self.top_250_list
    doc = Nokogiri::HTML(open('https://www.beeradvocate.com/beer/top-rated/'))
    all_beers_xml_array = doc.search(".hr_bottom_light[@align='left']")
    all_beers_xml_array
    binding.pry
  end 
  
end 



    
    
    #all beers XML array = doc.search(".hr_bottom_light[@align='left']")
    #entire table = doc.css("#ba-content > table")
    #binding.pry
    