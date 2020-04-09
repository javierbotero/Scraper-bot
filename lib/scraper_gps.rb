require 'nokogiri'
require 'open-uri'
require './lib/module_nodes.rb'

document = NodesPage::DOCUMENT
node_base = NodesPage::NODE_BASE
gps = NodesPage::GPS

File.open('lib/gps_classes.rb', 'w') do |line|
  line.write "require 'nokogiri'\nrequire 'open-uri'\nrequire './lib/products.rb'\n\n"
  line.write "module ClassesGps\n"
  gps.each do |category|        
    link_category = category.search('a')[0]['href']
    name_category = category.search('a').text.split('').map do |x| 
      NodesPage.convert_string(x)
    end
    name_category = NodesPage.class_name(name_category)     
    line.write "class #{name_category} < Gps
                  @@#{name_category}_number = 0
                  @@link_articles = '#{link_category}'
                  def initialize(name, price_now)
                    super                    
                    @@#{name_category}_number += 1
                  end\n
 
                  def self.#{name_category}_number
                    @@#{name_category}_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end\n\n"    
  end
  line.write 'end'
end

load './lib/gps_classes.rb'

gps_products = {}

gps.each do |list|
  link_category = list.search('a')[0]['href']
  products_classes = list.search('a').text.split('').map do |x|
    NodesPage.convert_string(x)
  end
  products_classes = NodesPage.class_name(products_classes)
  gps_products[products_classes] = {}
  products = Nokogiri::HTML(open(link_category))
  articles = products.search("ul[class='products columns-4']").search("div[class='mf-product-details']")
  articles.each do |x|   
    article_name = x.search("div[class='mf-product-content']").search('h2').search('a').text
    article_price = x.search("div[class='mf-product-price-box']").search("span[class='woocommerce-Price-amount amount']")[0].text
    object_product = Kernel.const_get('ClassesGps::' + products_classes).new(article_name, article_price)
    gps_products[products_classes][article_name] = object_product
  end
end

puts gps_products.keys
