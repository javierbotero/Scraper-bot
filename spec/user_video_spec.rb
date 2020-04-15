require './lib/user_video.rb'

RSpec.describe LibraryVideo do
  let(:session_video) { LibraryVideo.new }
  describe '#initialize' do
    it 'creates an instance variable which stores a hash with all the data called @video_data' do
      hash = session_video.video_data
      expect(hash.class).to eql(Hash)
    end
  end

  describe '#creating_instances' do
    it "creates an instance that can be called using the key 'Canon XA40 Videocámara UHD 4K Incluye Memoria de 64Gb de 80Mb/s' inside the hash which is inside @video_data with key 'Camaras_de_video'" do
      custom_object = session_video.video_data['Camaras_de_video'].key?('Canon XA40 Videocámara UHD 4K Incluye Memoria de 64Gb de 80Mb/s')
      expect(custom_object).to eql(true)
    end
  end

  describe '#show_video_categories' do
    it 'print all keys in the hash @video_data' do
      expect do
        session_video.show_video_categories
      end.to output(
"\nAccesorios
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
Tripodes_slider_dolly\n\n"
                   ).to_stdout
    end
  end

  describe '#check_products_name' do
    it "it checks if 'camaras_de_video' is present as a key inside @video_data" do
      answer = session_video.check_products_name('camaras_de_video')
      expect(answer).to eql(true)
    end
  end

  describe '#display_products' do
    it 'Display all products of with prices after a given ' do
      expect do
        session_video.display_products('camaras_de_video')
      end.to output(
"\nYou can find these articles here: https://importacionesarturia.com/categoria/camaras-fotografia-y-video/camaras-de-video/

Product: Canon XA40 Videocámara UHD 4K Incluye Memoria de 64Gb de 80Mb/s
Price: $6,299,990
Product: Canon VIXIA HF R800 Videocámara Full HD Incluye Memoria de 64Gb de 80Mb/s
Price: $1,039,990
Product: Canon VIXIA HF G21 Videocámara Full HD Incluye Memoria de 64Gb de 80Mb/s
Price: $3,349,990\n").to_stdout
    end
  end
end