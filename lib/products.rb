class Product
  def initialize (name, price)
    @name = name
    @price = price
  end
  
  def display_info
    puts "Product: #{@name}\nPrice: #{@price}"
  end
end

class Audio < Product
end

class Video < Product
end

class Gps < Product
end