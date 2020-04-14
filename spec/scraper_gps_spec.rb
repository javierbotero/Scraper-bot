require './lib/scraper_gps.rb'
require 'stringio'
load './lib/gps_classes.rb'

RSpec.describe SessionGps do
  let(:file) { IO.read('./lib/gps_classes.rb') }
  SessionGps.new
  describe '#initialize' do
    it "Writes the phrase 'module ClassesGps' on lib/gps_classes.rb" do
      answer = file.include?('module ClassesGps')
      expect(answer).to eql(true)
    end

    it "Writes the phrase 'class Gps_garmin' on lib/gps_classes.rb" do
      answer = file.include?('class Gps_garmin')
      expect(answer).to eql(true)
    end
  end
end
