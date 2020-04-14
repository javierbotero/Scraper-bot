require './lib/scraper_audio.rb'
require 'stringio'
load './lib/audio_classes.rb'

RSpec.describe SessionAudio do
  let (:file) { IO.read('./lib/audio_classes.rb') }
  SessionAudio.new
  describe '#initialize' do
    it "Writes the phrase 'module ClassesAudio' on lib/audio_classes.rb" do
      answer = file.include?('module ClassesAudio')
      expect(answer).to eql(true)
    end

    it "Writes the phrase 'class Audifonos' on lib/audio_classes.rb" do
      answer = file.include?('class Audifonos')
      expect(answer).to eql(true)
    end

    it "Writes the phrase 'class Microfonos_de_condensador' on lib/audio_classes.rb" do
      answer = file.include?('class Microfonos_de_condensador')
      expect(answer).to eql(true)
    end
  end

  describe '#write_classes' do
    let (:pseudo) { StringIO.new }
    it "Writes the phrase 'module ClassesAudio' on pseudo IO file" do
      File.open('temp.txt', 'w+') do |line|
        
      end
      write_classes
      answer = file.include?('module ClassesAudio')
      expect(answer).to eql(true)
    end
  end

  it "Writes the phrase 'class Audifonos' on lib/audio_classes.rb" do
    answer = file.include?('class Audifonos')
    expect(answer).to eql(true)
  end

  it "Writes the phrase 'class Microfonos_de_condensador' on lib/audio_classes.rb" do
    answer = file.include?('class Microfonos_de_condensador')
    expect(answer).to eql(true)
  end
  end
end