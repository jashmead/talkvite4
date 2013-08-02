class Venue < ActiveRecord::Base
  has_one :location
  has_many :tags, :as => :tagable
end
