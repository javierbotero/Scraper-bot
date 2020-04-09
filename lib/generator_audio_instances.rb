require 'nokogiri'
require 'open-uri'
require './lib/scraper.rb'
require './lib/audio_classes.rb'

document = Nokogiri::HTML(open('https://importacionesarturia.com/categoria/audio-profesional/audifonos/'))
articles = document.search("ul[class='products columns-4']").search("div[class='mf-product-details']")
articles.each do |x|   
  article_name = x.search("div[class='mf-product-content']").search('h2').search('a').text
  article_price = x.search("div[class='mf-product-price-box']").search("span[class='woocommerce-Price-amount amount']")[0].text
end



