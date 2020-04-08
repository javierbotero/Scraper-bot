require 'nokogiri'
require 'open-uri'

document = Nokogiri::HTML(open('https://importacionesarturia.com/tienda/'))
audio = document.search("ul[class='product-categories']").search("li[class='cat-item cat-item-48']").search("ul[class='children']").search('li')
video = document.search("ul[class='product-categories']").search("li[class='cat-item cat-item-42']").search("ul[class='children']").search('li')
gps = document.search("ul[class='product-categories']").search("li[class='cat-item cat-item-62']").search("ul[class='children']").search('li')
puts gps

# doc = Nokogiri::HTML(open('https://importacionesarturia.com/categoria/camaras-fotografia-y-video/camaras-nikon/'))
# dslrcams = doc.search("ul[class='products columns-4']").search("div[class='mf-product-details']")
# dslrcams.each do |x|    
#   prices = {}
#   camera_name = x.search("div[class='mf-product-content']").search("h2").search("a").text
#   puts camera_name
#   camera_price = x.search("div[class='mf-product-price-box']").search("span[class='woocommerce-Price-amount amount']")[0].text
#   puts camera_price
# end

# File.open('test.rb', 'w') do |line|
#   line.puts "class #{video_product} < Photography\n
#           @@#{number_of_products} = 0
#           def initialize
#             super
#             @@#{number_of_products} += 1
#           end
  
#           def self.products
#             @@#{number_of_products}
#           end
#         end  
#        "
# end


