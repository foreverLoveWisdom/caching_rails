# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeding data for Bike'
1.upto(1000) do
  bike        = Bike.new
  bike.model  = %w[Honda Yamaha Suzuki Kawasaki].sample
  bike.power  = [18.5, 18.0, 17.5, 19.0].sample
  bike.engine = [150, 155].sample
  bike.torque = [14.1, 14, 13, 15].sample
  bike.save!
end
puts 'Finish seeding data for Bike!!!'

