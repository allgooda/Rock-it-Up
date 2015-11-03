# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.delete_all
User.delete_all


jeff = User.create(
  name: "Jeff Dunham",
  email: "jeff.com",
  password: "123",
  password_confirmation: "123"
)

donny = User.create(
  name: "Donny Divanian",
  email: "donny.com",
  password: "123",
  password_confirmation: "123"
)

trista = User.create(
  name: "Trista Bakale",
  email: "trista.com",
  password: "123",
  password_confirmation: "123"
)

chase = User.create(
  name: "Chase Bernstein",
  email: "chase.com",
  password: "123",
  password_confirmation: "123"
)

andre = User.create(
  name: "Andre Agassi",
  email: "andre.com",
  password: "123",
  password_confirmation: "123"
)

j = jeff.posts.create(
  description: "I found these beautiful stones on the beach, they changed my life",
  site_found: "Northern Michigan",
  img_uri: "https://i.imgur.com/SqXHbNv.png"
  )

j2 = jeff.posts.create(
  description: "I really feel an energy of the earth coming from this rock I found in the Black Forest.",
  site_found: "Germany",
  img_uri: "https://i.imgur.com/gd0KTAy.png"
  )

d1 = donny.posts.create(
  description: "These mysterious rocks of the desert are able to move!",
  site_found: "Death Valley, CA",
  img_uri: "https://i.imgur.com/KdSSuJk.png"
  )

d2 = donny.posts.create(
  description: "They says the ancients painted these rocks...fascinating.",
  site_found: "Joshua Tree National Park",
  img_uri: "https://i.imgur.com/1gp18w4.png"
  )

t1 = trista.posts.create(
  description: "This one looks like a dinosaur hatched from it. Thats why i like it.",
  site_found: "Australia",
  img_uri: "https://i.imgur.com/biBw8h6.png"
  )

t2 = trista.posts.create(
  description: "Wow, two giant rocks right next to eachother",
  site_found: "New Zealand",
  img_uri: "https://i.imgur.com/CqKljeN.png"
  )

c1 = chase.posts.create(
  description: "This museum had rocks with faces. Very creepy but fascinating.",
  site_found: "Japan",
  img_uri: "https://i.imgur.com/e8e0kmU.png"
  )

c2 = chase.posts.create(
  description: "Wow, my bf gave me this sweet engagement ROCK! Very excited!",
  site_found: "Ring Box",
  img_uri: "https://i.imgur.com/WGsvnpp.png"
  )

a1 = andre.posts.create(
  description: "If there is one thing I love more than tennis it's Geneiss.",
  site_found: "Northern Wyoming",
  img_uri: "https://i.imgur.com/72DAR7n.png"
  )

a2 = andre.posts.create(
  description: "I always keep a piece of quartz on me for a big match like the US open",
  site_found: "Rick's Quartz Emporium, NYC",
  img_uri: "https://i.imgur.com/o8PgCKZ.png"
  )

a3 = andre.posts.create(
  description: "I also like sea shells!",
  site_found: "Manhattan beach",
  img_uri: "https://i.imgur.com/m1nu9Cf.png"
  )

