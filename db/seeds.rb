# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Picture.create!(
	:title => "Europe",
	:artist => "Josh Cornelius",
	:url => '019.JPG'
)

Picture.create!(
	:title => "Europe Again!",
	:artist => "Josh Cornelius",
	:url => '031.JPG'
)

Picture.create!(
	:title => "Europe one more time!",
	:artist => "Josh Cornelius",
	:url => '316.JPG'
)
