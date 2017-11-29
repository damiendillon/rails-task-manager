require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating 15 fake tasks...'
15.times do
  task = Task.new(
    name: Faker::StarWars.wookiee_sentence,
    difficulty: (0..5).to_a.sample,
    duration:  (0..60).to_a.sample,
    done: Faker::Boolean.boolean,
    )
  task.save!
end
puts 'Finished!'
