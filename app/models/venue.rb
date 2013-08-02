class Venue < ActiveRecord::Base
  has_one :location
  has_many :tags, :as => :tagable
  has_many :ratings, :as => :ratable
end
