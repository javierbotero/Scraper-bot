require './lib/products.rb'

module ClassesGps
  class Gps_garmin < Gps
    @@link_articles = 'https://importacionesarturia.com/categoria/gps/gps-garmin/'

    def self.link_articles
      @@link_articles
    end
  end
end