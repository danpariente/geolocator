require "rails_helper"

RSpec.describe GeolocatorAdapter do
  context ".coordinates" do
    it "calculates the latitude and longitude for a location name" do
      location_name = "Las Vegas Boulevard, Las Vegas, NV"
      stub_geocoding_request(location_name, 36, -115)

      result = GeolocatorAdapter.coordinates(location_name)

      expect(result).to eq([36, -115])
    end
  end
end
