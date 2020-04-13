module NodesPage
  DOCUMENT = Nokogiri::HTML(open('https://importacionesarturia.com/tienda/'))
  NODE_BASE = DOCUMENT.search("ul[class='product-categories']")
  AUDIO = NODE_BASE.search("li[class='cat-item cat-item-48']").search("ul[class='children']").search('li')
  VIDEO = NODE_BASE.search("li[class='cat-item cat-item-42']").search("ul[class='children']").search('li')
  GPS = NODE_BASE.search("li[class='cat-item cat-item-62']").search("ul[class='children']").search('li')

  def self.change_letter(letter)
    return 'u' if letter == 'ú'
    return '_' if letter == ' '
    return letter.downcase if /[A-Z]/.match(letter)

    letter
  end

  def self.convert_string(letter)
    return 'a' if letter == 'á'
    return 'e' if letter == 'é'
    return 'i' if letter == 'í'
    return 'o' if letter == 'ó'

    change_letter(letter)
  end

  def self.class_name(array)
    array = array.join
    first_part = array[0].upcase
    first_part + array[1..-1]
  end
end
