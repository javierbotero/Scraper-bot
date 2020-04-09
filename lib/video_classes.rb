require 'nokogiri'
require'open-uri'
require './lib/products.rb'
module ClassesVideo
class Accesorios < Video
                  @@Accesorios_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/accesorios/'
                  def initialize(name, price_now)
                    super                    
                    @@Accesorios_number += 1
                  end

 
                  def self.Accesorios_number
                    @@Accesorios_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Baterias_y_battery_grip < Video
                  @@Baterias_y_battery_grip_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/baterias-y-battery-grip/'
                  def initialize(name, price_now)
                    super                    
                    @@Baterias_y_battery_grip_number += 1
                  end

 
                  def self.Baterias_y_battery_grip_number
                    @@Baterias_y_battery_grip_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Camaras_canon < Video
                  @@Camaras_canon_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/camaras-canon/'
                  def initialize(name, price_now)
                    super                    
                    @@Camaras_canon_number += 1
                  end

 
                  def self.Camaras_canon_number
                    @@Camaras_canon_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Camaras_de_video < Video
                  @@Camaras_de_video_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/camaras-de-video/'
                  def initialize(name, price_now)
                    super                    
                    @@Camaras_de_video_number += 1
                  end

 
                  def self.Camaras_de_video_number
                    @@Camaras_de_video_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Camaras_nikon < Video
                  @@Camaras_nikon_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/camaras-nikon/'
                  def initialize(name, price_now)
                    super                    
                    @@Camaras_nikon_number += 1
                  end

 
                  def self.Camaras_nikon_number
                    @@Camaras_nikon_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Camaras_y_lentes_sony < Video
                  @@Camaras_y_lentes_sony_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/camaras-y-lentes-sony/'
                  def initialize(name, price_now)
                    super                    
                    @@Camaras_y_lentes_sony_number += 1
                  end

 
                  def self.Camaras_y_lentes_sony_number
                    @@Camaras_y_lentes_sony_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Estuches_y_bolsos < Video
                  @@Estuches_y_bolsos_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/estuches-y-bolsos/'
                  def initialize(name, price_now)
                    super                    
                    @@Estuches_y_bolsos_number += 1
                  end

 
                  def self.Estuches_y_bolsos_number
                    @@Estuches_y_bolsos_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Filtros_y_parasoles < Video
                  @@Filtros_y_parasoles_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/filtros-y-parasoles/'
                  def initialize(name, price_now)
                    super                    
                    @@Filtros_y_parasoles_number += 1
                  end

 
                  def self.Filtros_y_parasoles_number
                    @@Filtros_y_parasoles_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Flash_yongnuo_y_luces_led < Video
                  @@Flash_yongnuo_y_luces_led_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/luces-y-flash-yongnuo/'
                  def initialize(name, price_now)
                    super                    
                    @@Flash_yongnuo_y_luces_led_number += 1
                  end

 
                  def self.Flash_yongnuo_y_luces_led_number
                    @@Flash_yongnuo_y_luces_led_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Fly_cam_y_steady_cam < Video
                  @@Fly_cam_y_steady_cam_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/fly-cam-y-steady-cam/'
                  def initialize(name, price_now)
                    super                    
                    @@Fly_cam_y_steady_cam_number += 1
                  end

 
                  def self.Fly_cam_y_steady_cam_number
                    @@Fly_cam_y_steady_cam_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Grabadoras_zoom < Video
                  @@Grabadoras_zoom_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/grabadoras-zoom/'
                  def initialize(name, price_now)
                    super                    
                    @@Grabadoras_zoom_number += 1
                  end

 
                  def self.Grabadoras_zoom_number
                    @@Grabadoras_zoom_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Lentes_canon < Video
                  @@Lentes_canon_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/lentes-canon/'
                  def initialize(name, price_now)
                    super                    
                    @@Lentes_canon_number += 1
                  end

 
                  def self.Lentes_canon_number
                    @@Lentes_canon_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Lentes_nikon < Video
                  @@Lentes_nikon_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/lentes-nikon/'
                  def initialize(name, price_now)
                    super                    
                    @@Lentes_nikon_number += 1
                  end

 
                  def self.Lentes_nikon_number
                    @@Lentes_nikon_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Luces_y_flash_godox < Video
                  @@Luces_y_flash_godox_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/luces-y-flash-godox/'
                  def initialize(name, price_now)
                    super                    
                    @@Luces_y_flash_godox_number += 1
                  end

 
                  def self.Luces_y_flash_godox_number
                    @@Luces_y_flash_godox_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Microfonos_boom_y_solapa < Video
                  @@Microfonos_boom_y_solapa_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/microfonos-boom-y-solapa/'
                  def initialize(name, price_now)
                    super                    
                    @@Microfonos_boom_y_solapa_number += 1
                  end

 
                  def self.Microfonos_boom_y_solapa_number
                    @@Microfonos_boom_y_solapa_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Tripodes < Video
                  @@Tripodes_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/tripodes/'
                  def initialize(name, price_now)
                    super                    
                    @@Tripodes_number += 1
                  end

 
                  def self.Tripodes_number
                    @@Tripodes_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Tripodes_slider_dolly < Video
                  @@Tripodes_slider_dolly_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/camaras-fotografia-y-video/tripodes-slider-dolly/'
                  def initialize(name, price_now)
                    super                    
                    @@Tripodes_slider_dolly_number += 1
                  end

 
                  def self.Tripodes_slider_dolly_number
                    @@Tripodes_slider_dolly_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

end