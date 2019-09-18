require "rails_helper"

RSpec.describe Location do
  it { should validate_presence_of(:name) }

  context "#set_coordinates" do
    it "normalizes and assigns the respective postgis point" do
      location_name = "Statue of Liberty, NY"
      stub_geocoding_request(location_name, 40, -74)
      location = build(:location, name: location_name)
      coordinates = GeolocatorAdapter.coordinates(location.name)

      location.set_coordinates(coordinates)

      expect(location.lonlat.coordinates).to eq([-74, 40])
    end
  end
end
