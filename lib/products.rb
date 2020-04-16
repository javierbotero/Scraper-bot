class Product
  def initialize(name, price, information, link)
    @name = name
    @price = price
    @information = information
    @link = link
  end

  def display_info
    puts "Product: #{@name}\nPrice: #{@price}\nInformation: #{@information}\nLink: #{@link}\n\n"
  end
end

class Audio < Product
end

class Video < Product
end

class Gps < Product
end
