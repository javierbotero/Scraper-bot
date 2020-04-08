class Product  
  @@products = 0
  def initialize
    @@products += 1 
  end

  def self.products
    @@products                  
  end
end

class Audio < Product  
  @@audio_products = 0  
  def initialize
    super
    @@audio_products += 1
  end

  def self.audio_products
    @@audio_products
  end
end

class Photography < Product
  @@photography_products = 0
  def initialize
    super
    @@photography_products += 1
  end

  def self.photography_products
    @@photography_products
  end
end 

class Gps < Product  
  @@gps_products = 0
  def initialize
    super
    @@gps_products += 1
  end

  def self.gps_products
    @@video_products
  end
end
