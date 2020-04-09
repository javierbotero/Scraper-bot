require 'nokogiri'
require 'open-uri'
require './lib/module_nodes.rb'

File.open('lib/audio_classes.rb', 'w') do |line|
  line.write "require 'nokogiri'\nrequire'open-uri'\nrequire './lib/scraper.rb'\nrequire './bin/main.rb'\n"
  audio.each do |category|        
    link_category = category.search('a')[0]['href']
    name_category = category.search('a').text.split('').map do |x|      
      case x
      when 'á'
        'a'
      when 'é'
        'e'
      when 'í'
        'i'
      when 'ó'
        'o'
      when 'ú'
        'u'
      when ' '
        '_'
      when /[A-Z]/
        x.downcase
      else
        x
      end
    end
    name_category = name_category.join
    first_part = name_category[0].upcase
    name_class = first_part + name_category[1..-1]     
    line.write "class #{name_class} < Audio
                  @@#{name_category}_number = 0
                  @@link_articles = #{link_category}
                  attr_reader :link
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
end



