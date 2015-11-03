# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create(description:'Look at this one!', site_found:'Grand canyon', img_uri:'https://i.imgur.com/mEFn5L3.png')

Post.create(description:'WOW WOW WOW!', site_found:'NEW ZEALAND', img_uri:'https://i.imgur.com/mEFn5L3.png')

User.create(name:'Adam', email:'allgoodadam@gmail.com', password:'123')
