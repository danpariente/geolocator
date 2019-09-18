class GeocodeJob < ApplicationJob
  queue_as :geocode

  def perform(location_params)
    Location.create!(location_params) do |location|
      coordinates = fetch_coordinates(location_params)
      location.set_coordinates(coordinates)
    end
  end

  private

  def fetch_coordinates(location_params)
    GeolocatorAdapter.coordinates(location_params["name"])
  end
end
