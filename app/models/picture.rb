class Picture < ActiveRecord::Base
  validates_presence_of :set_url

  def self.urls
    all.map(&:set_url).inject([]) do |picture_urls, set_id|
      set = flickr.photosets.getPhotos(:photoset_id => set_id)
      picture_urls.push(set.photo.map { |photo| "http://www.flickr.com/photos/#{set.owner}/#{photo.id}" }).flatten
    end
  end
end
