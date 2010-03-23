class Comment < ActiveRecord::Base
  belongs_to :post

  scope :sorted,   order(:created_at)
  scope :approved, sorted.where(:approved => true)
  scope :rejected, sorted.where(:approved => false)
end
