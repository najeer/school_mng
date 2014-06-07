# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:name => "Admin", :email => "admin1@school.com", :password => "test1234",
:password_confirmation => "test1234")
User.create(:name => "User", :email => "najeerahmmad.sk@gmail.com", :password => "test1234",
:password_confirmation => "test1234")
User.create(:name => "Admin", :email => "admin@school.com", :password => "test1234",
:password_confirmation => "test1234", :role_id => 1, :batch => "12")
User.create(:name => "User", :email => "user@school.com", :password => "test1234",
:password_confirmation => "test1234", :role_id => 2, :batch => "12")