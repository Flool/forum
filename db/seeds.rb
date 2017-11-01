# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Group.destroy_all
User.destroy_all

g1 = Group.create(title: "Sports", description: "Love to play sports")
g2 = Group.create(title: "Food", description: "Anything and everything food")
g3 = Group.create(title: "Art", description: "Get in touch with your creative side")

u1 = User.create(username: "user1", email: "user1@email.com", password: "user", password_confirmation: "user")
u2 = User.create(username: "user2", email: "user2@email.com", password: "user", password_confirmation: "user")
u3 = User.create(username: "user3", email: "user3@email.com", password: "user", password_confirmation: "user")
u4 = User.create(username: "user4", email: "user4@email.com", password: "user", password_confirmation: "user")

p1 = g1.posts.create(user: u1, title: "The umpire last night was just terrible.", content: "The game would have been totally different if we had a competent ump. >:(")
p2 = g1.posts.create(user: u2, title: "Gordon Hayward leg injury", content: "Such a bummer")
p3 = g2.posts.create(user: u3, title: "Scientist discovers 'perfect Mac N' Cheese' recipe", content: "He's charging upwards of $5000 for it")
p4 = g2.posts.create(user: u4, title: "Turns out trans fats are actually bad for you", content: "whoops")

c1 = p1.comments.create(user: u3, content: "Another angry Astros fan")
c2 = p1.comments.create(user: u2, content: "Dodgers won fair and square lol")
c3 = p2.comments.create(user: u1, content: "ouch")
c4 = p3.comments.create(user: u3, content: "Can't be real. This guy is definitely a troll.")
c5 = p3.comments.create(user: u4, content: "I started a kickstarter to get the money to buy this mac n cheese. Check it out if you have the time https://www.kickstarter.com/projects/spicecrafters/its-like-gumbo-in-a-bottle-in-tampa-we-call-it-chi")


