require 'nokogiri'
require 'pry'
require 'open-uri'




class Scraper 
  
  
  def self.scrape
    doc = Nokogiri::HTML(open('https://www.beeradvocate.com/beer/top-rated/'))
    all_beers = doc.search(".hr_bottom_light[@align='left']") 
    i = 1
    beer_list = []
    all_beers.each do|beer| 
      if beer.css('a b').text != "" && i <=50
        beer_hash = {}
        beer_hash[:name] = beer.css('a b').text
        beer_hash[:brewery] = beer.css('span.muted a').first.text
        beer_hash[:type] = beer.css('span.muted a')[1].text
        beer_hash[:abv] = beer.css('span').text.split("|")[1].strip
        beer_list << beer_hash
        i += 1
      end
    end
    beer_list
  end 
   
  Scraper.scrape
   binding.pry
   
end 



   
    #all beers XML array = doc.search(".hr_bottom_light[@align='left']")
    #entire table = doc.css("#ba-content > table")
    #binding.pry





   
  
    