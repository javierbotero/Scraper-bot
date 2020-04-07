require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://importacionesarturia.com/categoria/camaras-fotografia-y-video/camaras-nikon/'))
dslrcams = doc.search("ul[class='products columns-4']")
information = dslrcams.search("div[class='mf-product-details']")
information.each do |x|    
  prices = {}
  div_info = x.search("div[class='mf-product-content']")
  heading_info = div_info.search("h2")
  info_product = heading_info.search("a")
  name_product = info_product.text
  puts price = x.xpath("//div[class='mf-product-price-box']//span[class='price']")
end


