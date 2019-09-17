class GeocodeJob < ApplicationJob
  queue_as :geocode

  def perform(location_params)
    coordinates = Geocoder.search(location_params["name"]).first.coordinates
    lonlat = "POINT (%s %s)" % coordinates.reverse
    Location.create!(
      location_params.merge(
        lonlat: lonlat
      )
    )
  end
end
