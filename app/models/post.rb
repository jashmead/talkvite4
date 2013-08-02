# validate post_type:  join, leave, ''; default ''
# validate content: present if it is ''
class Post < ActiveRecord::Base
  belongs_to :talk
end
