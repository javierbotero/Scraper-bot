require_relative '../lib/user_audio.rb'

RSpec.describe LibraryAudio do
  let(:session_audio) { LibraryAudio.new }
  describe '#initialize' do
    it 'creates an instance variable wich stores a hash with all the data called @audio_data' do
      hash = session_audio.audio_data
      expect(hash.class).to eql(Hash)
    end
  end

  describe '#creating_instances' do
    it "creates an instance that can be called using the key 'Cable XLR Mogami Gold
    Studio para Micrófono (8m)' inside the hash inside @audio_data with key 'Accesorios'" do
      custom_object = session_audio.audio_data['Accesorios'].key?('Cable XLR Mogami Gold Studio para Micrófono (8m)')
      expect(custom_object).to eql(true)
    end
  end

  describe '#show_audio_categories' do
    it 'print all keys in the hash @audio_data' do
      expect do
        session_audio.show_audio_categories
      end.to output("\nAccesorios
Audifonos
Controladores_midi
Microfonos_de_condensador
Monitores_profesionales
Preamplificadores
Tarjetas_de_sonido\n\n").to_stdout
    end
  end

  describe '#check_products_name' do
    it "it checks if 'audifonos' is present as a key inside @audio_data" do
      answer = session_audio.check_products_name('audifonos')
      expect(answer).to eql(true)
    end
  end

  describe '#display_products' do
    it 'Display all products of the given controladores_midi with with all the information of each product' do
      expect do
        session_audio.display_products('controladores_midi')
      end.to output("\nYou can find these articles here: https://importacionesarturia.com/categoria/audio-profesional/tarjetas-de-sonido/

Product: Novation Launchkey 25 MK II Controlador
Price: $649,990
Information: 25 teclas sensibles a la velocidad, 16 almohadillas sensibles a la velocidad con retroiluminación RGB, 8 perillas y 1 control deslizante, Controles de transporte + USB alimentado, Se asigna al instante a múltiples DAW, 4 GB de muestras de Loopmasters, Ableton Live Lite y otras aplicaciones, Compatibilidad con Mac, PC y iPad, Complementos gratuitos de Sound Collective, Lecciones de interpretación de melódicos.
Link: https://importacionesarturia.com/producto/novation-lunchkey-25-mk-ii/

Product: Novation Launchkey 49 MKII Controlador Midi
Price: $849,990
Information: 49 teclas sensibles a la velocidad, 16 almohadillas sensibles a la velocidad con retroiluminación RGB, 8 perillas y 9 controles deslizantes, Controles de transporte + USB alimentado, Se asigna al instante a múltiples DAW, 4 GB de muestras de Loopmasters, Ableton Live Lite y otras aplicaciones, Compatibilidad con Mac, PC y iPad, Complementos gratuitos de Sound Collective, Lecciones de interpretación de melódicos.
Link: https://importacionesarturia.com/producto/novation-launchkey-49-mk2-controlador-midi/

Product: Novation Launchkey 61 MKII Controlador Midi
Price: $1,099,990
Information: 61 teclas sensibles a la velocidad, 16 almohadillas sensibles a la velocidad con retroiluminación RGB, 8 perillas y 9 controles deslizantes, Controles de transporte + USB alimentado, Se asigna al instante a múltiples DAW, 4 GB de muestras de Loopmasters, Ableton Live Lite y otras aplicaciones, Compatibilidad con Mac, PC y iPad, Complementos gratuitos de Sound Collective, Lecciones de interpretación de melódicos.
Link: https://importacionesarturia.com/producto/novation-launchkey-61-mk2-controlador-midi/

Product: Novation Impulse 61 – Controlador USB – MIDI
Price: $1,479,990
Information: 61 teclas semipesadas con Aftertouch, 8 codificadores rotativos y 9 faders, 8 almohadillas de gatillo retroiluminadas, Arpegiador, Software de control automático, Lanzamiento de Clip Ableton, Compatible con Mac / Windows, Lecciones de interpretación de melódicos.
Link: https://importacionesarturia.com/producto/novation-impulse-61/

Product: Novation Impulse 49 – Controlador USB y MIDI
Price: $1,299,990
Information: 49 teclas semipesadas con Aftertouch, 8 codificadores rotativos y 9 faders, 8 almohadillas de gatillo retroiluminadas, Arpegiador, Software de control automático, Lanzamiento de Clip Ableton, Compatible con Mac / Windows, Melódica: Lecciones gratuitas de tecla y almohadilla de batería.
Link: https://importacionesarturia.com/producto/novation-impulse-49/\n\n").to_stdout
    end
  end
end
