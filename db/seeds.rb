# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Claim.destroy_all
Company.destroy_all
User.destroy_all

20.times do 
    Company.create(name: Faker::Company.name)
end

30.times do
    User.create(email: Faker::Internet.email, password: 123456, password_confirmation: 123456)
end

250.times do
    Claim.create(user_id: User.all.sample.id, company_id: Company.all.sample.id, content: 'This is a claim against a company, because i am very angry and I like potatoes')
end


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development? 