require 'nokogiri'
require 'open-uri'
require_relative 'module_nodes.rb'
load './lib/audio_classes.rb'

class LibraryAudio
  include ClassesAudio
  attr_reader :audio_data, :link_category

  def initialize
    @audio = NodesPage::AUDIO
    @audio_data = {}
    @audio.each do |list|
      @link_category = list.search('a')[0]['href']
      products_classes = list.search('a').text.split('').map do |x|
        NodesPage.convert_string(x)
      end
      products_classes = NodesPage.class_name(products_classes)
      @audio_data[products_classes] = {}
      products = Nokogiri::HTML(URI.open(@link_category))
      articles = products.search("ul[class='products columns-4']").search("div[class='mf-product-details']")
      articles.each do |product|
        creating_instances(product, products_classes)
      end
    end
  end

  def creating_instances(product, products_classes)
    article_name = product.search("div[class='mf-product-content']").search('h2').search('a').text
    article_price = product.search(
      "div[class='mf-product-price-box']"
    ).search("span[class='woocommerce-Price-amount amount']")[0].text
    article_link = product.search("div[class='mf-product-content']").search('h2').search('a')[0]['href']
    article_description = product.search("div[class='mf-product-content']")
      .search("div[class='woocommerce-product-details__short-description']")
        .search('ul').search('li')
    information = ''
    article_description.each_with_index do |article, index|
      index == article_description.size - 1 ? information << article.text + '.' : information << article.text + ', '
    end
    object_product = Kernel.const_get('ClassesAudio::' + products_classes).new(article_name, article_price, information, article_link)
    @audio_data[products_classes][article_name] = object_product
  end

  def show_audio_categories
    puts ''
    @audio_data.each_key { |k| puts k.to_s }
    puts ''
  end

  def check_products_name(choice)
    @audio_data.any? { |k, _v| k.downcase == choice.downcase }
  end

  def display_products(choice)
    results = @audio_data.filter { |key, _value| key.downcase == choice.downcase }
    results.each do |key, value|
      puts "\nYou can find these articles here: #{@link_category}\n\n"
      value.each do |_key, instance_value|
        instance_value.display_info
      end
    end
  end
end
