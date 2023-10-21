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

main_categories = ['KAT-1', 'KAT-2', 'KAT-3']
sub_categories = ['podkategoria 1', 'podkategoria 2', 'podkategoria 3', 'podkategoria 4', 'podkategoria 5', 'podkategoria 6']
main_categories.each do |cat|
  main_cat = Category.create!(organization: organization, title: cat, description: '')
  sub_categories.each do |sub_cat_title|
    Category.create!(title: sub_cat_title, parent_category_id: main_cat.id, organization: organization, description: 'Example description for')
  end
end
