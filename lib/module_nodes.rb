module NodesPage
    DOCUMENT = Nokogiri::HTML(open('https://importacionesarturia.com/tienda/'))
    NODE_BASE = DOCUMENT.search("ul[class='product-categories']")
    AUDIO = NODE_BASE.search("li[class='cat-item cat-item-48']").search("ul[class='children']").search('li')
    VIDEO = NODE_BASE.search("li[class='cat-item cat-item-42']").search("ul[class='children']").search('li')
    GPS = NODE_BASE.search("li[class='cat-item cat-item-62']").search("ul[class='children']").search('li')
    
    def self.convert_string(x)
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

    def self.class_name(array)
      array = array.join
      first_part = array[0].upcase
      name_class = first_part + array[1..-1]
    end
end