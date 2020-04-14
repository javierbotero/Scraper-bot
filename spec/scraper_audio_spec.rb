require './lib/scraper_audio.rb'
load './lib/audio_classes.rb'

RSpec.describe SessionAudio do
  let (:file) {IO.read('./lib/audio_classes.rb')}
  describe '#initialize' do
    it 'Writes the Module ClassesAudio on lib/audio_classes.rb file based on the links audio products' do
      SessionAudio.new
      answer = file.include?('ClassesAudio')
      expect(answer).to eql(true)
    end
  end
end