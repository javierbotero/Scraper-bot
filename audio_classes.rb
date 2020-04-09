require 'nokogiri'

              require 'open-uri'
class Accesorios < Audio

                  @@Accesorios_number = 0

                  def initialize(name, price_now)

                    super
                    @@Accesorios += 1
                   
                  end


 
                  def self.Accesorios_number

                    @@Accesorios_number

                  end

                endclass Audífonos < Audio

                  @@Audífonos_number = 0

                  def initialize(name, price_now)

                    super
                    @@Audífonos += 1
                   
                  end


 
                  def self.Audífonos_number

                    @@Audífonos_number

                  end

                endclass Controladores_Midi < Audio

                  @@Controladores_Midi_number = 0

                  def initialize(name, price_now)

                    super
                    @@Controladores_Midi += 1
                   
                  end


 
                  def self.Controladores_Midi_number

                    @@Controladores_Midi_number

                  end

                endclass Micrófonos_de_condensador < Audio

                  @@Micrófonos_de_condensador_number = 0

                  def initialize(name, price_now)

                    super
                    @@Micrófonos_de_condensador += 1
                   
                  end


 
                  def self.Micrófonos_de_condensador_number

                    @@Micrófonos_de_condensador_number

                  end

                endclass Monitores_Profesionales < Audio

                  @@Monitores_Profesionales_number = 0

                  def initialize(name, price_now)

                    super
                    @@Monitores_Profesionales += 1
                   
                  end


 
                  def self.Monitores_Profesionales_number

                    @@Monitores_Profesionales_number

                  end

                endclass Preamplificadores < Audio

                  @@Preamplificadores_number = 0

                  def initialize(name, price_now)

                    super
                    @@Preamplificadores += 1
                   
                  end


 
                  def self.Preamplificadores_number

                    @@Preamplificadores_number

                  end

                endclass Tarjetas_de_sonido < Audio

                  @@Tarjetas_de_sonido_number = 0

                  def initialize(name, price_now)

                    super
                    @@Tarjetas_de_sonido += 1
                   
                  end


 
                  def self.Tarjetas_de_sonido_number

                    @@Tarjetas_de_sonido_number

                  end

                end