require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://importacionesarturia.com/categoria/camaras-fotografia-y-video/camaras-nikon/'))
dslrcams = doc.css('mf-shop-content li a href')
puts dslrcams

