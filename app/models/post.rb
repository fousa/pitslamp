class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :author
  validates_presence_of :permalink
  validates_presence_of :content

  has_many :comments

  scope :ordered,   order("published_at desc")
  scope :blog,      lambda { where("published_at <= ?", Time.zone.now).ordered }
  scope :permalink, lambda { |permalink, admin| admin ? where(:permalink => permalink) : blog.where(:permalink => permalink) }
end
