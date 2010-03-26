class Comment < ActiveRecord::Base
  belongs_to :post

  validates :author,  :presence  => true
  validates :content, :presence  => true
  validates :url,     :format    => { :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix }, :if => Proc.new { |c| not c.url.blank? }
  validates :email,   :presence  => true, :format    => { :with => /^.+@[^\.].*\.[a-z]{2,}$/ix }
  validates :spam,    :inclusion => { :in   => %w( warm ) }

  attr_accessor :spam

  scope :sorted,   order(:created_at)
  scope :approved, sorted.where(:approved => true)
  scope :rejected, sorted.where(:approved => false)
end
