
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
  Cat.create!([{
    name: Faker::Name.first_name,
    birth_date: Faker::Date.birthday(min_age: 1, max_age: 20),
    color: %w(brown white gray black orange spotted striped).sample,
    sex: %w(M F X).sample,
    description: Faker::Books::Lovecraft.sentence
  }])

end