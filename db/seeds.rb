# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

history = Subject.new(:name => "History")
history.save
science = Subject.new(:name => "Science")
science.save
art = Subject.new(:name => "Art")
art.save
sports = Subject.new(:name => "Sports")
sports.save
geography = Subject.new(:name => "Geography")
geography.save
entertainment = Subject.new(:name => "Entertainment")
entertainment.save