require "rails_helper"
require "./lib/fake_geocoder"

RSpec.describe FakeGeocoder do
  it "allows setting and getting geocoded values" do
    FakeGeocoder["search"] = [45, 67]

    expect(FakeGeocoder.coordinates("search")).to eq([45, 67])
  end

  it "raises error when trying to get nonexistent value" do
    expect do
      FakeGeocoder.coordinates("nonexistent search")
    end.to raise_error(/nonexistent search/)
  end
end
