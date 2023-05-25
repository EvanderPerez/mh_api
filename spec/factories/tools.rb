FactoryBot.define do
  factory :tool do
    model { Faker::Lorem.word }
    tool_type { Faker::Lorem.word }
    brand { Faker::Lorem.word }
    accesories { Faker::Lorem.word }
    location { Faker::Lorem.word }
    service_order
  end
end
