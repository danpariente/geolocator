FactoryBot.define do
  factory :location do
    name { "36 2nd St., San Francisco, CA, 94105, US" }
    lonlat { "POINT (37.788587 -90.0)" }

    trait :invalid do
      name { nil }
      lonlat { nil }
    end
  end
end
