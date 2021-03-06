require 'nokogiri'
require 'open-uri'
require_relative 'module_nodes.rb'
load './lib/video_classes.rb'

class LibraryVideo
  include ClassesVideo
  attr_reader :video_data

  def initialize
    @video = NodesPage::VIDEO
    @video_data = {}
    @video.each do |list|
      @link_category = list.search('a')[0]['href']
      products_classes = list.search('a').text.split('').map do |x|
        NodesPage.convert_string(x)
      end
      products_classes = NodesPage.class_name(products_classes)
      @video_data[products_classes] = {}
      products = Nokogiri::HTML(URI.open(@link_category))
      articles = products.search("ul[class='products columns-4']").search("div[class='mf-product-details']")
      articles.each do |product|
        creating_objects(product, products_classes)
      end
    end
  end

  def creating_objects(product, products_classes)
    article_name = product.search("div[class='mf-product-content']").search('h2').search('a').text
    article_price = product.search("div[class='mf-product-price-box']")
      .search("span[class='woocommerce-Price-amount amount']")[0].text
    article_link = product.search("div[class='mf-product-content']").search('h2').search('a')[0]['href']
    article_description = product.search("div[class='mf-product-content']")
      .search("div[class='woocommerce-product-details__short-description']")
      .search('ul').search('li')
    information = ''
    article_description.each_with_index do |article, index|
      information << if index == article_description.size - 1
                       article.text + '.'
                     else
                       article.text + ', '
                     end
    end
    object_product = Kernel.const_get('ClassesVideo::' + products_classes)
      .new(article_name, article_price, information, article_link)
    @video_data[products_classes][article_name] = object_product
  end

  def show_video_categories
    puts ''
    @video_data.each_key { |k| puts k.to_s }
    puts ''
  end

  def check_products_name(choice)
    @video_data.any? { |k, _v| k.downcase == choice.downcase }
  end

  def display_products(choice)
    results = @video_data.select { |key, _value| key.downcase == choice.downcase }
    results.each do |_key, value|
      puts "\nYou can find these articles here: #{@link_category}\n\n"
      value.each do |_key, instance_value|
        instance_value.display_info
      end
    end
  end
end
