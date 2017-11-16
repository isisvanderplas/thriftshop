FactoryGirl.define do
  factory :profile do
    name  { Faker::Name.name }
    address   { Faker::Address.street_address }
    phone_number   { 0000000000 }
  end
end
