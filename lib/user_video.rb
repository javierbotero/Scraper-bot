require 'nokogiri'
require 'open-uri'
require './lib/module_nodes.rb'
load './lib/video_classes.rb'

class LibraryVideo
  include ClassesVideo

  def initialize
    @video = NodesPage::VIDEO
    @video_data = {}
    @video.each do |list|
      link_category = list.search('a')[0]['href']
      products_classes = list.search('a').text.split('').map do |x|
        NodesPage.convert_string(x)
      end
      products_classes = NodesPage.class_name(products_classes)
      @video_data[products_classes] = {}
      products = Nokogiri::HTML(open(link_category))
      articles = products.search("ul[class='products columns-4']").search("div[class='mf-product-details']")
      articles.each do |x|   
        article_name = x.search("div[class='mf-product-content']").search('h2').search('a').text
        article_price = x.search("div[class='mf-product-price-box']").search("span[class='woocommerce-Price-amount amount']")[0].text
        object_product = Kernel.const_get('ClassesVideo::' + products_classes).new(article_name, article_price)
        @video_data[products_classes][article_name] = object_product
      end
    end
  end
    
  def show_video_categories
    puts ""
    @video_data.each_key { |k| puts "#{k}" }
    puts ""
  end
  
  def check_products_name(choice)
    @video_data.any?{ |k, v| k.downcase == choice.downcase }
  end
  
  def display_products(choice)
    results = @video_data.filter { |key, value| key.downcase == choice.downcase }
    results.each do |key, value|
      puts "\nThe total number of #{key} is #{Kernel.const_get('ClassesVideo::' + key).number_articles}\n"
      puts "You can find this articles here: #{Kernel.const_get('ClassesVideo::' + key).link_articles}\n\n"
      value.each do |key, value|
        value.display_info
      end
    end
  end
end
