class Location < ApplicationRecord
  validates :name, presence: true

  def set_coordinates(coordinates)
    normed_point = normalize_postgis_point(coordinates)
    self.lonlat = normed_point
  end

  private

  def normalize_postgis_point(coordinates)
    "POINT (%s %s)" % coordinates.reverse
  end
end
