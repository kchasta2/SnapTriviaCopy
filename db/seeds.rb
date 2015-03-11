# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Subject.create!([
    { id: 1, subject_title: "Art" },
    { id: 1, subject_title: "Entertainment" },
    { id: 1, subject_title: "History" },
    { id: 1, subject_title: "Geography" },
    { id: 1, subject_title: "Science" },
    { id: 1, subject_title: "Sports" },
    { id: 1, subject_title: "Bonus" },
])