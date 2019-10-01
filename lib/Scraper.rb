require 'nokogiri'
require 'pry'
require 'open-uri'
require_relative 'Beer.rb'



class Scraper 
  
  
  def self.scrape
    doc = Nokogiri::HTML(open('https://www.beeradvocate.com/beer/top-rated/'))
    all_beers = doc.search(".hr_bottom_light[@align='left']") 
    i = 1
    all_beers.each do|beer| 
      if beer.css('a b').text != "" && i <=50
        name = beer.css('a b').text
        brewery = beer.css('span.muted a').first.text
        type = beer.css('span.muted a')[1].text
        abv = beer.css('span').text.split("|")[1].strip
        i += 1
        Beer.new(name, brewery, type, abv)
      end
    end
  end 
  
   
  
   
end 



   
    #all beers XML array = doc.search(".hr_bottom_light[@align='left']")
    #entire table = doc.css("#ba-content > table")
    #binding.pry





   
  
    