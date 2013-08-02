# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create( name: 'akmed13', email: 'akmed13@talkvite.com' )
talk1 = Talk.create( user_id: user1.id, content: 'talk about talkvite' )
post1 = Post.create( user_id: user1.id, talk_id: talk1.id, post_type: 'join', content: "Hello, World!" )
