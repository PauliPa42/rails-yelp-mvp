require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

categories = %w(chinese italian japanese french belgian)

puts 'Creating restaurants...'
5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: categories.sample
  )
end

puts 'Done!'
