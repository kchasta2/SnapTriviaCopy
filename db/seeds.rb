# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Subject.create!([
    { subject_title: "Art" },
    { subject_title: "Entertainment" },
    { subject_title: "History" },
    { subject_title: "Geography" },
    { subject_title: "Science" },
    { subject_title: "Sports" },
    { subject_title: "Bonus" },
])

### Creates Users ###
# Deletes all users in users table
User.delete_all
# Creates users in users table
User.create!([
   { name:'Admin', email: 'admin@admin.com', password: '12345678', password_confirmation: '12345678', admin: true, reviewer: true }

])