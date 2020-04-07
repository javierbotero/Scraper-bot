require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://importacionesarturia.com/categoria/camaras-fotografia-y-video/camaras-nikon/'))
dslrcams = doc.search("ul[class='products columns-4']").search("div[class='mf-product-details']")
dslrcams.each do |x|    
  prices = {}
  camera_name = x.search("div[class='mf-product-content']").search("h2").search("a").text
  puts camera_name
  camera_price = x.search("div[class='mf-product-price-box']").search("span[class='woocommerce-Price-amount amount']")[0].text
  puts camera_price
end


