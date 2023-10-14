# frozen_string_literal: true

# rails runner 'load(File.join(Rails.root, "db", "seed", "rb", "client.rb"))'
puts 'Importing client...'

20.times do
  Client.create(
    email: Faker::Internet.email,
    name: Faker::Name.name_with_middle,
    phone: Faker::PhoneNumber.cell_phone,
  )
end
