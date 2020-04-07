class Product
  attr_reader :name, :price_before, :price_now, :available

  def initialize (name, price_now, available, link, price_before=false, promotion=false)
    @name = name
    @price_before = price_before
    @price_now = price_now
    @available = available
    @link = link
    @promotion = promotion
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

class CamerasDslr < Product
  attr_reader :cameras
  @@cameras = 0

  def initialize
    @@cameras =+ 1
  end
end