FactoryBot.define do
  factory(:business) do
    name {Faker::Restaurant.name}
    address {Faker::Address.street_address}
    phone {Faker::PhoneNumber.phone_number}
    zipcode { '97006' }
  end

end