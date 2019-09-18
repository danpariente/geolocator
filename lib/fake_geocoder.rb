class FakeGeocoder
  def self.[]=(name, latlon)
    @coordinates[name] = latlon
  end

  def self.coordinates(name)
    @coordinates.fetch(name)
  end

  def self.clear
    @coordinates = {}
  end
end
