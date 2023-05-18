FactoryBot.define do
  factory :client do
    first_name { Faker::Lorem.word }
    last_name { Faker::Lorem.word }
    phone_number { Faker::Lorem.sentence }
  end
end