# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)

# using 'create!' to force exceptions on errors

user1 = User.create!( name: 'akmed13', email: 'akmed13@talkvite.com' )
talk1 = Talk.create!( user_id: user1.id, content: 'talk about talkvite' )
post1 = Post.create!( user_id: user1.id, talk_id: talk1.id, post_type: 'join', content: "Hello, World!" )
location1 = Location.create!( name: "Nowhere/NoCity/NoCountry/NoPost", 
  address_full: "1 Nowhere Street\n\nNoCity\nNoCountry\nNoPost", 
  street1: "1 Nowhere Street",
  city: "NoCity",
  country: "NoCountry",
  post_code: "NoPost"
);
venue1 = Venue.create!( venue_type: 'none', location_id: location1.id );

user2 = User.create!( name: 'test user', email: 'testy@talkvite.com', location_id: location1.id );

# on polymorphic assume, for now, that we will use the table name, i.e. 'users', 'locations', 'venues', and so on
tag1 = Tag.create!( tag: 'all', tagable_type: 'users', tagable_id: user2.id );
