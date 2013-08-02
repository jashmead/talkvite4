# validate email:  present, unique
# validate name: present, unique
# add foreign keys to all
# add admin_flag, default false
# add group_flag, default false

class User < ActiveRecord::Base
  has_many :talks
  belongs_to :location
end
