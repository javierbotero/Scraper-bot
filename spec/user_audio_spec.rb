require './lib/user_audio.rb'

RSpec.describe LibraryAudio do
  let(:session_audio) { LibraryAudio.new }
  describe '#initialize' do
    it 'creates an instance variable wich stores a hash with all the data called @audio_data' do
      hash = session_audio.audio_data
      expect(hash.class).to eql(Hash)
    end
  end

  describe '#creating_instances' do
    it "creates and instance that can be caled using the key 'Cable XLR Mogami Gold Studio para Micrófono (8m)' inside the hash inside @audio_data with key 'Accesorios'" do
      custom_object = session_audio.audio_data['Accesorios'].key?('Cable XLR Mogami Gold Studio para Micrófono (8m)')
      expect(custom_object).to eql(true)
    end
  end

  describe '#show_audio_categories' do
    it 'print all keys in the hash @audio_data' do
      expect do
        session_audio.show_audio_categories
      end.to output(
          "\nAccesorios
Audifonos
Controladores_midi
Microfonos_de_condensador
Monitores_profesionales
Preamplificadores
Tarjetas_de_sonido\n\n"
                   ).to_stdout
    end
  end

  describe '#check_products_name' do
    it "it checks if 'audifonos' is present as a key inside @audio_data" do
      answer = session_audio.check_products_name('audifonos')
      expect(answer).to eql(true)
    end
  end

  describe '#display_products' do
    it 'Display all products of with prices after a given ' do
      expect do
        session_audio.display_products('controladores_midi')
      end.to output("\nThe total number of Controladores_midi is 5
You can find these articles here: https://importacionesarturia.com/categoria/audio-profesional/controladores-midi/

Product: Novation Launchkey 25 MK II Controlador
Price: $649,990
Product: Novation Launchkey 49 MKII Controlador Midi
Price: $849,990
Product: Novation Launchkey 61 MKII Controlador Midi
Price: $1,079,990
Product: Novation Impulse 61 – Controlador USB – MIDI
Price: $1,479,990
Product: Novation Impulse 49 – Controlador USB y MIDI
Price: $1,299,990\n").to_stdout
    end
  end
end