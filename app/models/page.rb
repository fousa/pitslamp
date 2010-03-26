class Page < ActiveRecord::Base
  validates :title,      :presence => true
  validates :permalink,  :presence => true
  validates :content,    :presence => true, :if => Proc.new { |page| not page.handled_by_controller? }

  scope :ordered, order("position ASC")
  scope :in_menu,  ordered.where("pages.menu_title != ''")

  def self.home_page
    where(:home_page => true).first
  end

  def self.page_with_permalink(permalink)
    where(:permalink => permalink).first
  end

  def self.order!(ids)
    ids.each_with_index do |id, index|
      Page.find(id).update_attribute(:position, index)
    end
  end

  def external_url?
    permalink.match /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix
  end

  def set_as_home_page!
    Page.update_all(:home_page => false)
    update_attribute(:home_page, true)
  end
end