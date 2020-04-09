require 'nokogiri'
require 'open-uri'
require './lib/products.rb'
module ClassesAudio
class Accesorios < Audio
                  @@Accesorios_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/audio-profesional/accesorios-audio-profesional/'
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

class Audifonos < Audio
                  @@Audifonos_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/audio-profesional/audifonos/'
                  def initialize(name, price_now)
                    super                    
                    @@Audifonos_number += 1
                  end

 
                  def self.Audifonos_number
                    @@Audifonos_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Controladores_midi < Audio
                  @@Controladores_midi_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/audio-profesional/controladores-midi/'
                  def initialize(name, price_now)
                    super                    
                    @@Controladores_midi_number += 1
                  end

 
                  def self.Controladores_midi_number
                    @@Controladores_midi_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Microfonos_de_condensador < Audio
                  @@Microfonos_de_condensador_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/audio-profesional/microfonos-de-condensador/'
                  def initialize(name, price_now)
                    super                    
                    @@Microfonos_de_condensador_number += 1
                  end

 
                  def self.Microfonos_de_condensador_number
                    @@Microfonos_de_condensador_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Monitores_profesionales < Audio
                  @@Monitores_profesionales_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/audio-profesional/monitores-profesionales/'
                  def initialize(name, price_now)
                    super                    
                    @@Monitores_profesionales_number += 1
                  end

 
                  def self.Monitores_profesionales_number
                    @@Monitores_profesionales_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Preamplificadores < Audio
                  @@Preamplificadores_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/audio-profesional/preamplificadores/'
                  def initialize(name, price_now)
                    super                    
                    @@Preamplificadores_number += 1
                  end

 
                  def self.Preamplificadores_number
                    @@Preamplificadores_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

class Tarjetas_de_sonido < Audio
                  @@Tarjetas_de_sonido_number = 0
                  @@link_articles = 'https://importacionesarturia.com/categoria/audio-profesional/tarjetas-de-sonido/'
                  def initialize(name, price_now)
                    super                    
                    @@Tarjetas_de_sonido_number += 1
                  end

 
                  def self.Tarjetas_de_sonido_number
                    @@Tarjetas_de_sonido_number
                  end

                  def self.link_articles
                    @@link_articles
                  end
                end

end