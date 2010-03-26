class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :author
  validates_presence_of :permalink
  validates_presence_of :content

  # has_many :comments

  scope :ordered, order(:created_at)
  scope :blog,    lambda { where("(published_at NOT IS NULL AND published_at <= ?) OR created_at <= ?", Time.now, Time.now).ordered }

  def publish_date
    published_at || created_at
  end
end
