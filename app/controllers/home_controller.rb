class HomeController < ApplicationController

  caches_page :index

  def index
    initialize_home

    @urls = Picture.urls
  end

  def initialize_home
    @title         = "PitsLamp"
    @selected_page = "home"
    @body_style    = "home"
  end

end