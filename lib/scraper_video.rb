require 'nokogiri'
require 'open-uri'
require './lib/module_nodes.rb'

class SessionVideo
  def initialize
    @video = NodesPage::VIDEO
    File.open('lib/video_classes.rb', 'w+') do |line|
      line.write "require './lib/products.rb'\n\n"
      line.write "module ClassesVideo\n"
      @video.each do |category|
        link_category = category.search('a')[0]['href']
        name_category = category.search('a').text.split('').map do |x|
          NodesPage.convert_string(x)
        end
        name_category = NodesPage.class_name(name_category)
        write_classes(line, name_category, link_category)
      end
      line.write 'end'
    end
  end

  def write_classes(line, name_category, link_category)
    line.write "  class #{name_category} < Video
    @@#{name_category}_number = 0
    @@link_articles = '#{link_category}'
    def initialize(name, price_now)
      super
      @@#{name_category}_number += 1
    end

    def self.number_articles
      @@#{name_category}_number
    end

    def self.link_articles
      @@link_articles
    end
  end\n"
  end
end
