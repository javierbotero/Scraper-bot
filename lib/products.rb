class Product
  attr_reader :name, :price_before, :price_now, :available
  @@products = 0

  def initialize (name, price_now, available, link, price_before=false, promotion=false)
    @name = name
    @price_before = price_before
    @price_now = price_now
    @available = available
    @link = link
    @promotion = promotion
    @@products += 1 
  end

  def showinfo
    puts "Product: #{@name}\n
          Price now: #{@price_now}\n
          Price before: #{@price_before ? @price_before : 'No info'}\n
          Promotion: #{@promotion ? @promotion : 'No promotion'}\n
          Product's link: #{@link}\n
          Avalability: #{@available ? 'Yes' : 'No'}"
  end
end

class Audio < Product  
  @@audio_products = 0  
  def initialize
    super
    @@audio_products += 1
  end

  def self.products
    @@audio_products
  end
end

class Photography < Product
  @@photography_products = 0
  def initialize
    super
    @@photography_products += 1
  end

  def self.products
    @@photography_products
  end
end 

class Gps < Product  
  @@gps_products = 0
  def initialize
    super
    @@gps_products += 1
  end

  def self.products
    @@video_products
  end
end
