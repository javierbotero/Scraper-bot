require_relative '../lib/user_video.rb'

RSpec.describe LibraryVideo do
  let(:session_video) { LibraryVideo.new }
  describe '#initialize' do
    it 'creates an instance variable which stores a hash with all the data called @video_data' do
      hash = session_video.video_data
      expect(hash.class).to eql(Hash)
    end
  end

  describe '#creating_instances' do
    it "creates an instance that can be called using the key 'Canon XA40 Videocámara UHD 4K
    Incluye Memoria de 64Gb de 80Mb/s' inside the hash which is inside @video_data with key 'Camaras_de_video'" do
      custom_object = session_video.video_data['Camaras_de_video']
        .key?('Canon XA40 Videocámara UHD 4K Incluye Memoria de 64Gb de 80Mb/s')
      expect(custom_object).to eql(true)
    end
  end

  describe '#show_video_categories' do
    it 'print all keys in the hash @video_data' do
      expect do
        session_video.show_video_categories
      end.to output("\nAccesorios
Baterias_y_battery_grip
Camaras_canon
Camaras_de_video
Camaras_nikon
Camaras_y_lentes_sony
Estuches_y_bolsos
Filtros_y_parasoles
Flash_yongnuo_y_luces_led
Fly_cam_y_steady_cam
Grabadoras_zoom
Lentes_canon
Lentes_nikon
Luces_y_flash_godox
Microfonos_boom_y_solapa
Tripodes
Tripodes_slider_dolly\n\n").to_stdout
    end
  end

  describe '#check_products_name' do
    it "it checks if 'camaras_de_video' is present as a key inside @video_data" do
      answer = session_video.check_products_name('camaras_de_video')
      expect(answer).to eql(true)
    end
  end

  # rubocop:disable Layout/LineLength

  describe '#display_products' do
    it 'Display all products of the given category camaras_de_video with all the information of the product' do
      expect do
        session_video.display_products('camaras_de_video')
      end.to output("\nYou can find these articles here: https://importacionesarturia.com/categoria/camaras-fotografia-y-video/tripodes-slider-dolly/

Product: Canon XA40 Videocámara UHD 4K Incluye Memoria de 64Gb de 80Mb/s
Price: $6,299,990
Information: Sensor CMOS de 8.29MP, 1 / 2.3 “, Grabación de video hasta UHD 4K30, Salida mini-HDMI, Lente de zoom óptico integrado de 20x.
Link: https://importacionesarturia.com/producto/canon-xa40-videocamara-uhd-4k-incluye-memoria-de-64gb-de-80mb-s/

Product: Canon VIXIA HF R800 Videocámara Full HD Incluye Memoria de 64Gb de 80Mb/s
Price: $1,139,990
Information: Graba hasta 1920 x 1080p60 de video, Canon 3.28MP Full HD Sensor CMOS, Procesador DIGIC DV de 4 imágenes, 57x Advanced Zoom y SuperRange OIS, Pantalla LCD táctil capacitiva de 3 “, Ranura para tarjeta de memoria SD / SDHC / SDXC, Resalte el modo de prioridad, Grabación en cámara rápida y lenta.
Link: https://importacionesarturia.com/producto/canon-vixia-hf-r800-videocamara-full-hd-incluye-memoria-de-64gb-de-80mbs/

Product: Canon VIXIA HF G21 Videocámara Full HD Incluye Memoria de 64Gb de 80Mb/s
Price: $3,349,990
Information: Grabación de video Full HD 1080p60, 1 / 2.84 “, 2.9MP HD CMOS Pro Sensor, Canon HD f / 1.8-2.9 lente de zoom, Óptico 20x, zoom digital 400x, Estabilización de imagen óptica inteligente, Pantalla táctil capacitiva LCD de 3.0 “, Captura de movimiento lento / rápido de 2x a 1200x, Graba AVCHD y MP4 en 2 ranuras para tarjetas SD, Apertura de 8 cuchillas, amplio rango dinámico, Resalte el modo de prioridad.
Link: https://importacionesarturia.com/producto/canon-vixia-hf-g21-videocamara-memoria-64gb/\n\n").to_stdout
    end
    # rubocop:enable Layout/LineLength
  end
end
