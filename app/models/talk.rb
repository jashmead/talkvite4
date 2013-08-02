# validate content:  present
class Talk < ActiveRecord::Base
  belongs_to :user
  has_many :posts
end
