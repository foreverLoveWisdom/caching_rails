desc 'Seed user for all current bikes'

task seed_user_for_all_current_bikes: :environment do
  no_of_users = User.count
  puts 'Create seed data for users...'

  1.upto(10 - no_of_users) do
    user          = User.new
    user.email    = Faker::Internet.email
    user.password = '123456789'
    user.save!
  end

  puts 'Finish seeding data for users. Now, assigning users for bikes'

  unless Bike.count.zero?
    Bike.all.each do |bike|
      bike.user_id = User.all.limit(10).pluck(:id).sample
      bike.save!
    end
  end

  puts 'Finish assigning users to all current bikes'
end
