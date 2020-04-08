require './products.rb'

class FlashesLights < Photography
  @@flashes_lights = 0
  def initialize
    super
    @@flashes_lights += 1
  end

  def self.products
    @@flashes_lights
  end
end

class SteadyCams < Photography
  @@steady_cams = 0
  def initialize
    super
    @@steady_cams += 1
  end

  def self.products
    @@steady_cams
  end
end


