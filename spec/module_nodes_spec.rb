require_relative '../lib/module_nodes.rb'
require 'nokogiri'
require 'open-uri'

RSpec.describe NodesPage do
  describe '#convert_string' do
    it 'Change the vowel ú for the vowel u' do
      expect(NodesPage.convert_string('ú')).to eql('u')
    end

    it 'Return a downcase vowel if an upcase is passed' do
      expect(NodesPage.convert_string('A')).to eql('a')
    end

    it 'Convert a space for a underscore' do
      expect(NodesPage.convert_string(' ')).to eql('_')
    end
  end

  describe '#class_name' do
    let(:array) { ['h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd'] }
    it 'Converts an array in a string retunring the first letter capitalized' do
      expect(NodesPage.class_name(array)).to eql('Hello world')
    end
  end
end
