class Location < ApplicationRecord
  validates :name, :lonlat, presence: true
end
