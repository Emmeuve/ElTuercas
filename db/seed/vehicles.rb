# frozen_string_literal: true

# rails runner 'load(File.join(Rails.root, "db", "seed", "rb", "vehicle.rb"))'
puts 'Importing vehicles...'

50.times do
  vehicle = Vehicle.create(
    make: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    year: Faker::Vehicle.year,
    price: Faker::Number.decimal(l_digits: 5, r_digits: 2),
    vehicle_type: VehicleType.order("RANDOM()").first,
    color: Color.order("RANDOM()").first
  )
end
