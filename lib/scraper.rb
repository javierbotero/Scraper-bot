require 'nokogiri'
require 'open-uri'

document = Nokogiri::HTML(open('https://importacionesarturia.com/tienda/'))
audio = document.search("ul[class='product-categories']").search("li[class='cat-item cat-item-48']").search("ul[class='children']").search('li')
video = document.search("ul[class='product-categories']").search("li[class='cat-item cat-item-42']").search("ul[class='children']").search('li')
gps = document.search("ul[class='product-categories']").search("li[class='cat-item cat-item-62']").search("ul[class='children']").search('li')

File.open('audio_classes.rb', 'w') do |line|  
  audio.each do |category|        
    link_category = category.search('a')[0]['href']
    name_category = category.search('a').text.split('').map{ |x| x == ' ' ? '_' : x}.join    
    i = 0
    line.write "class #{name_category} < Audio\n
                  @@#{name_category}_number = 0\n
                  def initialize(name, price_now, price_before)\n
                    super
                    @@#{name_category} += 1\n                   
                  end\n\n
 
                  def self.#{name_category}_number\n
                    @@#{name_category}_number\n
                  end\n
                end"
    line.write "document = Nokogiri::HTML(open('#{link_category}'))
                document.search(\"ul[class='mf-product-content']\").search"
  end       
end
  

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


