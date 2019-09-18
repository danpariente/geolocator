class GeolocatorAdapter
  Error = Class.new(StandardError)

  class_attribute :geocoding_service, default: Geocoder

  def self.coordinates(location_name)
    geocoding_service_coordinates(location_name)
  rescue => error
    raise Error.new(error.message)
  end

  def self.geocoding_service_coordinates(location_name)
    geocoding_service.coordinates(location_name)
  end

  private_class_method :geocoding_service_coordinates
end
