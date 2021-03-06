require 'factory_girl_rails'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create(email: 'admin@kboo.org', password: '12345678', password_confirmation: '12345678', role: 'admin')

8.times do 
  FactoryGirl.create(:category)
end

8.times do
  FactoryGirl.create(:user)
end

FactoryGirl.create(:program)  

FactoryGirl.create(:episode)  

