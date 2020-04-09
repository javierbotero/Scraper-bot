require './lib/scraper_audio.rb'
require './lib/scraper_video.rb'
require './lib/scraper_gps.rb'

puts "This is a Bot to check all the products and \nprices offered on the Colombian technology woocomerce \nwebsite www.importacionesarturia.com\nplease give a second meanwhile a load\nthe information."
session_video = SessionVideo.new
session_video.create_library_video
# session_audio = SessionAudio.new
# session_gps = SessionGps.new

loop do
  loop do
    puts "\nPlease write 'video'/'audio'/'gps' or 'all' to see the \nproducts in these three categories or all products available\n"
    choice_categories = gets.chomp.downcase
    case choice_categories
    when 'video'
      session_video.show_video_categories
      loop do
        puts "\nwrite the name of the category to see the products \nor copy paste the name of the category and press enter"
        choice_video_products = gets.chomp.downcase
        if session_video.check_products_name(choice_video_products)
          session_video.display_products(choice_video_products)
          break
        end
        puts 'Write exactly as possible the products you want to check'  
      end    
      break
    # when 'audio'
    #   show_audio_categories
    #   loop do
    #     puts "write the name of the category to see the products \nor copy paste the name of the category and press enter"
    #     choice_audio_products = gets.chomp.downcase
    #     if check_products_name(choice_audio_products)
    #       display_products(choice_video_products)
    #       break
    #     end
    #     puts 'Write exactly as possible the products you want to check'  
    #   end
    #   break
    # when 'gps'
    #   show_gps_categories
    #   loop do
    #     puts "write the name of the category to see the products \nor copy paste the name of the category and press enter"
    #     choice_audio_products = gets.chomp.downcase
    #     if check_products_name(choice_audio_products)
    #       display_products(choice_video_products)
    #       break
    #     end
    #     puts 'Write exactly as possible the products you want to check'  
    #   end
    #   break
    # when 'all'
    #   show_all
    #   loop do
    #     puts "write the name of the category to see the products \nor copy paste the name of the category and press enter"
    #     choice_audio_products = gets.chomp.downcase
    #     if check_products_name(choice_audio_products)
    #       display_products(choice_video_products)
    #       break
    #     end
    #     puts 'Write exactly as possible the products you want to check'  
    #   end
    #   break
    else
      puts 'Write exactly the option you want'
    end
  end
  puts "Do you want to check again? (Y/N)"
  anwser = gets.chomp.downcase
  exit if %w[y yes].include?(anwser)
end
