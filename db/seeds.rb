# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed
  def self.begin
    Business.destroy_all
    seed = Seed.new
    seed.generate_businesses
  end

  def generate_businesses
    20.times do |i|
      business = Business.create!(
        name: Faker::Restaurant.name,
        zipcode: "97006",
        address: Faker::Address.street_address,
        phone: Faker::PhoneNumber.phone_number
      )
      puts "Business #{i}: #{business.name} is located in the #{business.zipcode}."
    end
  end
end

Seed.begin
