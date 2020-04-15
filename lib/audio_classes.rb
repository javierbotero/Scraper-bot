require './lib/products.rb'

module ClassesAudio
  class Accesorios < Audio
    @@link_articles = 'https://importacionesarturia.com/categoria/audio-profesional/accesorios-audio-profesional/'

    def self.link_articles
       @@link_articles
    end
  end

  class Audifonos < Audio
    @@link_articles = 'https://importacionesarturia.com/categoria/audio-profesional/audifonos/'

    def self.link_articles
       @@link_articles
    end
  end

  class Controladores_midi < Audio
    @@link_articles = 'https://importacionesarturia.com/categoria/audio-profesional/controladores-midi/'

    def self.link_articles
       @@link_articles
    end
  end

  class Microfonos_de_condensador < Audio
    @@link_articles = 'https://importacionesarturia.com/categoria/audio-profesional/microfonos-de-condensador/'

    def self.link_articles
       @@link_articles
    end
  end

  class Monitores_profesionales < Audio
    @@link_articles = 'https://importacionesarturia.com/categoria/audio-profesional/monitores-profesionales/'

    def self.link_articles
       @@link_articles
    end
  end

  class Preamplificadores < Audio
    @@link_articles = 'https://importacionesarturia.com/categoria/audio-profesional/preamplificadores/'

    def self.link_articles
       @@link_articles
    end
  end

  class Tarjetas_de_sonido < Audio
    @@link_articles = 'https://importacionesarturia.com/categoria/audio-profesional/tarjetas-de-sonido/'

    def self.link_articles
       @@link_articles
    end
  end

end