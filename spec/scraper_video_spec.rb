require_relative '../lib/scraper_video.rb'
require 'stringio'
load './lib/video_classes.rb'

RSpec.describe SessionVideo do
  let(:file) { IO.read('./lib/video_classes.rb') }
  SessionVideo.new
  describe '#initialize' do
    it "Writes the phrase 'module ClassesVideo' on lib/video_classes.rb" do
      answer = file.include?('module ClassesVideo')
      expect(answer).to eql(true)
    end

    it "Writes the phrase 'class Camaras_nikon' on lib/video_classes.rb" do
      answer = file.include?('class Camaras_nikon')
      expect(answer).to eql(true)
    end

    it "Writes the phrase 'class Microfonos_de_condensador' on lib/video_classes.rb" do
      answer = file.include?('class Flash_yongnuo_y_luces_led')
      expect(answer).to eql(true)
    end
  end
end
