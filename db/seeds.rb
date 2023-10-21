# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

organization = Organization.create!(name: 'Januszex s.p.o.o', key: 'tem-key', slug: 'Januszex')

admin = User.create!(email: 'pan.janusz@korpo.com', first_name: 'Janusz', last_name: 'Kowalski',
                     organization: organization, password: 'Password1!', password_confirmation: 'Password1!')

10.times do |i|
  Employee.create!(email: "prawonik_#{i}@korpo.com", organization: organization)
end
