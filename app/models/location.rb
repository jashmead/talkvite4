# has procedures for resolving raw address into broken out bits & for taking bits and turning into longitude, latitude
#   locatable lets us point from location to venue or to user 
#     if we have this, do we need location_id in venue and user tables?
#     location can be employed by multiple venues, but each venue has one location
#     therefore, pointer has to go from user, venue up to location
class Location < ActiveRecord::Base
  has_many :users
  has_many :venues
end
