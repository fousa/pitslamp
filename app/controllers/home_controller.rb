class HomeController < ApplicationController

  caches_page :index

  def index
    @title = "PitsLamp"
    @selected_page = "home"

    @urls = Picture.urls
  end

end