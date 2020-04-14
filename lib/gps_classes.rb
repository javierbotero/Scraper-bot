require './lib/products.rb'

module ClassesGps
  class Gps_garmin < Gps
    @@Gps_garmin_number = 0
    @@link_articles = 'https://importacionesarturia.com/categoria/gps/gps-garmin/'
    def initialize(name, price_now)
      super
      @@Gps_garmin_number += 1
    end


    def self.number_articles
      @@Gps_garmin_number
    end

    def self.link_articles
      @@link_articles
    end
  end
end