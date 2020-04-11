require 'nokogiri'
require 'open-uri'
require './lib/module_nodes.rb'

class SessionGps  
  attr_reader :gps
  attr_writer :gps_products

  def initialize
    @gps = NodesPage::GPS
    File.open('lib/gps_classes.rb', 'w') do |line|
      line.write "require 'nokogiri'\nrequire 'open-uri'\nrequire './lib/products.rb'\n\n"
      line.write "module ClassesGps\n"
      @gps.each do |category|        
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
     
                      def self.number_articles
                        @@#{name_category}_number
                      end
    
                      def self.link_articles
                        @@link_articles
                      end
                    end\n\n"    
      end
      line.write 'end'
    end
  end 
end
