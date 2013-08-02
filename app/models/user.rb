# validate email:  present, unique
# validate name: present, unique
class User < ActiveRecord::Base
  has_many :talks
end
