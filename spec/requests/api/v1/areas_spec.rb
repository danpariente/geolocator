require "rails_helper"

RSpec.describe "GET /api/v1/areas" do
  it "fetches all the areas stored locally" do
    get "/api/v1/areas"

    expect(response.status).to eq(200)

    areas_json = json_body
    expect(areas_json.fetch("features").first).to eq({
      "type" => "Feature",
      "properties" => {},
      "geometry" => {
        "type" => "Polygon",
        "coordinates" => [
          [
            [
              7.36083984375,
              50.666872321810715
            ],
            [
              8.19580078125,
              49.82380908513249
            ],
            [
              10.634765625,
              50.190967765585604
            ],
            [
              10.72265625,
              51.481382896100975
            ],
            [
              8.76708984375,
              51.52241608253253
            ],
            [
              7.36083984375,
              50.666872321810715
            ]
          ]
        ]
      }
    })
  end
end
