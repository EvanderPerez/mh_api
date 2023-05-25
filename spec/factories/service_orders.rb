FactoryBot.define do
  factory :service_order do
    client_id { create(:client) }
    details { Faker::Lorem.word }
  end
end
