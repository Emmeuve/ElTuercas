# frozen_string_literal: true

# rails runner 'load(File.join(Rails.root, "db", "seed", "rb", "client.rb"))'
puts 'Importing clients...'

20.times do
  Client.create(
    email: Faker::Internet.email,
    name: Faker::Name.name_with_middle,
    phone: Faker::PhoneNumber.cell_phone,
    address: Faker::Address.full_address,)
end
