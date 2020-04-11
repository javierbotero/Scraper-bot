require 'nokogiri'
require 'open-uri'
require './lib/module_nodes.rb'

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
end

