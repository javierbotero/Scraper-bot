require './products.rb'
  
class Accessories < Photography
  @@accessories = 0
  def initialize
    super
    @@accessories += 1
  end

  def self.products
    @@accessories
  end
end

class Batteries < Photography
  @@batteries = 0

  def initialize
    super
    @@batteries += 1
  end

  def self.products
    @@batteries
  end
end

class CamerasCanon < Photography
  @@cameras_canon = 0  
  def initialize
    super
    @@cameras_canon += 1
  end

  def self.products
    @@cameras_canon
  end
end

class VideoCameras < Photography
  @@video_cameras = 0  
  def initialize
    super
    @@video_cameras += 1
  end

  def self.products
    @@video_cameras
  end
end

class CamerasNikon < Photography
  @@cameras_nikon = 0  
  def initialize
    super
    @@cameras_nikon += 1
  end

  def self.products
    @@cameras_nikon
  end
end

class SonyProducts < Photography
  @@sony_products = 0  
  def initialize
    super
    @@sony_products += 1
  end

  def self.products
    @@sony_products
  end
end

class CasesAndBags < Photography
  @@cases_bags = 0  
  def initialize
    super
    @@cases_bags += 1
  end

  def self.products
    @@cases_bags
  end
end

class Filters < Photography
  @@filters = 0  
  def initialize
    super
    @@filters += 1
  end

  def self.products
    @@filters
  end
end
