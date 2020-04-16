require 'nokogiri'
require 'open-uri'
require_relative 'module_nodes.rb'

class SessionGps
  def initialize
    @gps = NodesPage::GPS
    File.open('lib/gps_classes.rb', 'w+') do |line|
      line.write "require_relative 'products.rb'\n\n"
      line.write "module ClassesGps\n"
      @gps.each do |category|
        name_category = category.search('a').text.split('').map do |x|
          NodesPage.convert_string(x)
        end
        name_category = NodesPage.class_name(name_category)
        write_classes(line, name_category)
      end
      line.write 'end'
    end
  end

  def write_classes(line, name_category)
    line.write "  class #{name_category} < Gps
  end\n"
  end
end
