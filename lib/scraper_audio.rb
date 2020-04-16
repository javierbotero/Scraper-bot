require 'nokogiri'
require 'open-uri'
require_relative 'module_nodes.rb'

class SessionAudio
  def initialize
    @audio = NodesPage::AUDIO
    File.open('lib/audio_classes.rb', 'w+') do |line|
      line.write "require_relative 'products.rb'\n\n"
      line.write "module ClassesAudio\n"
      @audio.each do |category|
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
    line.write "  class #{name_category} < Audio
  end\n\n"
  end
end
