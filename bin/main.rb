require './lib/scraper_audio.rb'
require './lib/scraper_video.rb'
require './lib/scraper_gps.rb'

puts "\n---------------Bot-Page---------------\nThis is a Bot to check all the products and \nprices offered on the Colombian technology \nwoocomerce website www.importacionesarturia.com\nplease give me a second meanwhile\nthe information is loaded.\n"
session_video = SessionVideo.new
session_video.create_library_video
session_audio = SessionAudio.new
session_audio.create_library_audio
session_gps = SessionGps.new
session_gps.create_library_gps

loop do
  loop do
    puts "\nPlease write 'video' or 'audio' or 'gps' to see the \nproducts in one of these three categories.\n"
    choice_categories = gets.chomp.downcase
    case choice_categories
    when 'video'
      session_video.show_video_categories
      loop do
        puts "\nwrite the name of the category to see the products \nor copy paste the name of the category and press enter\n"
        choice_video_products = gets.chomp.downcase
        if session_video.check_products_name(choice_video_products)
          session_video.display_products(choice_video_products)
          break
        end
        puts 'Write exactly as possible the products you want to check'  
      end    
      break
    when 'audio'
      session_audio.show_audio_categories
      loop do
        puts "write the name of the category to see the products \nor copy paste the name of the category and press enter\n"
        choice_audio_products = gets.chomp.downcase
        if session_audio.check_products_name(choice_audio_products)
          session_audio.display_products(choice_audio_products)
          break
        end
        puts 'Write exactly as possible the products you want to check'  
      end
      break
    when 'gps'
      session_gps.show_gps_categories
      loop do
        puts "write the name of the category to see the products \nor copy paste the name of the category and press enter"
        choice_gps_products = gets.chomp.downcase
        if session_gps.check_products_name(choice_gps_products)
          session_gps.display_products(choice_gps_products)
          break
        end
        puts 'Write exactly as possible the products you want to check'  
      end
      break
    else
      puts 'Write exactly the option you want'
    end
  end
  puts "Do you want to check again? (Y/N)"
  anwser = gets.chomp.downcase
  exit if %w[n no].include?(anwser)
end


