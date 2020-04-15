require './lib/scraper_audio.rb'
require './lib/scraper_video.rb'
require './lib/scraper_gps.rb'

SessionVideo.new
SessionAudio.new
SessionGps.new

puts "\n---------------Bot-Page---------------\n
This is a Bot to check all the products and
prices offered on the Colombian technology
woocomerce website www.importacionesarturia.com
please give me a second meanwhile the information
is loaded.\n"

require './lib/user_audio.rb'
require './lib/user_video.rb'
require './lib/user_gps.rb'

library_video = LibraryVideo.new
library_audio = LibraryAudio.new
library_gps = LibraryGps.new

def video_actions(library_video)
  library_video.show_video_categories
  loop do
    puts "\nwrite the name of the category to see the products
or copy paste the name of the category and press enter\n"
    choice_video_products = gets.chomp.downcase
    if library_video.check_products_name(choice_video_products)
      library_video.display_products(choice_video_products)
      break
    end
    puts "\nWrite exactly as possible the products you want to check\n"
  end
end

def audio_actions(library_audio)
  library_audio.show_audio_categories
  loop do
    puts "\nwrite the name of the category to see the products \n
or copy paste the name of the category and press enter\n"
    choice_audio_products = gets.chomp.downcase
    if library_audio.check_products_name(choice_audio_products)
      library_audio.display_products(choice_audio_products)
      break
    end
    puts "\nWrite exactly as possible the products you want to check\n"
  end
end

def gps_actions(library_gps)
  library_gps.show_gps_categories
  loop do
    puts "\nwrite the name of the category to see the products \n
or copy paste the name of the category and press enter\n"
    choice_gps_products = gets.chomp.downcase
    if library_gps.check_products_name(choice_gps_products)
      library_gps.display_products(choice_gps_products)
      break
    end
    puts "\nWrite exactly as possible the products you want to check\n"
  end
end

loop do
  loop do
    puts "\nPlease write 'video' or 'audio' or 'gps' to see the \nproducts in one of these three categories.\n"
    choice_categories = gets.chomp.downcase
    case choice_categories
    when 'video'
      video_actions(library_video)
      break
    when 'audio'
      audio_actions(library_audio)
      break
    when 'gps'
      gps_actions(library_gps)
      break
    else
      puts "\nWrite exactly the option you want\n"
    end
  end
  puts 'Do you want to check again? (Y/N)'
  anwser = gets.chomp.downcase
  next if %w[y ye yes].include?(anwser)

  File.open('./lib/video_classes.rb', 'w+') { |line| line.truncate(0) }
  File.open('./lib/audio_classes.rb', 'w+') { |line| line.truncate(0) }
  File.open('./lib/gps_classes.rb', 'w+') { |line| line.truncate(0) }
  exit
end
