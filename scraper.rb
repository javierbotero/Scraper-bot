require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://'))