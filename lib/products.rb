class Product
  def initialize(name, price, link)
    @name = name
    @price = price
    @link = link
  end

  def display_info
    puts "Product: #{@name}\nPrice: #{@price}\nLink: #{@link}\n\n"
  end
end

class Audio < Product
end

class Video < Product
end

class Gps < Product
end
