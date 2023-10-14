# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "contacts.rb"))'
#requiere 'csv'

#puts "Importando repair..."
#csv.foreach(Rails.root.join("db", "repair.csv"), headers: true) do |row|
#  Repair.create! do |repair|
#    repair.id = row[0]
#    repair.name = row[1]
#  end
#end

#puts "Importando Service..."
#csv.foreach(Rails.root.join("db", "service.csv"), headers: true) do |row|
#  Repair.create! do |repair|
#    repair.id = row[0]
#    repair.name = row[1]
#  end
#end

puts "Importando Vehiculo..."
csv.foreach(Rails.root.join("db", "Vehiculo.csv"), headers: true) do |row|
  Repair.create! do |repair|
    repair.id = row[0]
    repair.name = row[1]
  end
end