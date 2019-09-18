require "rails_helper"

RSpec.describe "POST /api/v1/locations" do
  it "creates location with Created stats" do
    id = SecureRandom.uuid
    location_params = attributes_for(:location, id: id)

    post "/api/v1/locations", params: { location: location_params }

    expect(response.status).to eq(201)

    location_json = json_body["data"]
    expect(location_json["id"]).to eq(id)
  end

  context "when there are invalid attributes" do
    it "returns 422 Unprocessable Entity with errors" do
      location_params = attributes_for(:location, :invalid)

      post "/api/v1/locations", params: { location: location_params }

      expect(response.status).to eq(422)
      expect(json_body.fetch("errors")).not_to be_empty
    end
  end
end
