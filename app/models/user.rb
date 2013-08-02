# validate email:  present, unique
# validate name: present, unique
# add foreign keys to all
# add admin_flag, default false
# add group_flag, default false

class User < ActiveRecord::Base
  has_many :talks
  has_one :location
  has_many :tags, :as => :tagable
end
