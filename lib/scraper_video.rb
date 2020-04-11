require 'nokogiri'
require 'open-uri'
require './lib/module_nodes.rb'
load './lib/video_classes.rb'

class SessionVideo
  @@video = NodesPage::VIDEO
  attr_reader :video_products
  
  def initialize    
    File.open('lib/video_classes.rb', 'w') do |line|
      line.write "require './lib/products.rb'\n\n"
      line.write "module ClassesVideo\n"
      @@video.each do |category|        
        link_category = category.search('a')[0]['href']
        name_category = category.search('a').text.split('').map do |x| 
          NodesPage.convert_string(x)
        end
        name_category = NodesPage.class_name(name_category)     
        line.write "  class #{name_category} < Video\n    @@#{name_category}_number = 0\n    @@link_articles = '#{link_category}'\n    def initialize(name, price_now)\n      super\n      @@#{name_category}_number += 1\n    end\n\n    def self.number_articles\n      @@#{name_category}_number\n    end\n\n    def self.link_articles\n      @@link_articles\n    end\n  end\n"
      end
      line.write 'end'
    end
  end
  
  def create_library_video
    @video_products = {}
    @@video.each do |list|
      link_category = list.search('a')[0]['href']
      products_classes = list.search('a').text.split('').map do |x|
        NodesPage.convert_string(x)
      end
      products_classes = NodesPage.class_name(products_classes)
      @video_products[products_classes] = {}
      products = Nokogiri::HTML(open(link_category))
      articles = products.search("ul[class='products columns-4']").search("div[class='mf-product-details']")
      articles.each do |x|   
        article_name = x.search("div[class='mf-product-content']").search('h2').search('a').text
        article_price = x.search("div[class='mf-product-price-box']").search("span[class='woocommerce-Price-amount amount']")[0].text
        object_product = Kernel.const_get('ClassesVideo::' + products_classes).new(article_name, article_price)
        @video_products[products_classes][article_name] = object_product
      end
    end
  end
    
  def show_video_categories
    puts ""
    @video_products.each_key { |k| puts "#{k}" }
    puts ""
  end
  
  def check_products_name(choice)
    @video_products.any?{ |k, v| k.downcase == choice.downcase }
  end

  def display_products(choice)
    results = @video_products.filter { |key, value| key.downcase == choice.downcase }
    results.each do |key, value|
      puts "\nThe total number of #{key} is #{Kernel.const_get('ClassesVideo::' + key).number_articles}\n"
      puts "You can find this articles here: #{Kernel.const_get('ClassesVideo::' + key).link_articles}\n\n"
      value.each do |key, value|
        value.display_info
      end
    end
  end
end
