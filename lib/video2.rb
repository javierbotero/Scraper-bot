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