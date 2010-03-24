class Page < ActiveRecord::Base

  scope :ordered, order("position ASC")
  scope :active,  ordered.where(:active => true)

  def self.home_page
    active.where(:home_page => true).first
  end

  def self.page_with_permalink(permalink)
    where(:permalink => permalink).first
  end

  def set_as_home_page!
    Page.update_all(:home_page => false)
    update_attribute(:home_page, true)
  end

  def self.order!(ids)
    ids.each_with_index do |id, index|
      Page.find(id).update_attribute(:position, index)
    end
  end

end