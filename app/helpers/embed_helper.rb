module EmbedHelper

  def embed(url)
    flickr = OEmbed::Provider.new("http://www.flickr.com/services/oembed/", :json)
    flickr << "http://*.flickr.com/*"
    res = flickr.get(url)
    res
  end

end
