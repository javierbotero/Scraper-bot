require './lib/user_gps.rb'

RSpec.describe LibraryGps do
  let(:session_gps) { LibraryGps.new }
  describe '#initialize' do
    it 'creates an instance variable which stores a hash with all the data called @gps_data' do
      hash = session_gps.gps_data
      expect(hash.class).to eql(Hash)
    end
  end

  describe '#creating_instances' do
    it "creates an instance that can be use with the key 'Gps 64s Garmin' inside the hash which is inside @gps_data with key 'Gps_garmin'" do
      custom_object = session_gps.gps_data['Gps_garmin'].key?('Gps 64s Garmin')
      expect(custom_object).to eql(true)
    end
  end

  describe '#show_gps_categories' do
    it 'print all keys in the hash @gps_data' do
      expect do
        session_gps.show_gps_categories
      end.to output("\nGps_garmin\n\n").to_stdout
    end
  end

  describe '#check_products_name' do
    it "it checks if 'Gps_garmin' is present as a key inside @gps_data" do
      answer = session_gps.check_products_name('Gps_garmin')
      expect(answer).to eql(true)
    end
  end

  describe '#display_products' do
    it 'Display all products of gps_garmin with prices and name' do
      expect do
        session_gps.display_products('Gps_garmin')
      end.to output(
"\nYou can find these articles here: https://importacionesarturia.com/categoria/gps/gps-garmin/

Product: Gps 64s Garmin
Price: $1,099,990
Product: Gps 78s Garmin
Price: $879,990\n").to_stdout
    end
  end
end