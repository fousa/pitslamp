class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :author
  validates_presence_of :permalink
  validates_presence_of :content

  # has_many :comments
end
