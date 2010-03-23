class PortfoliosController < ApplicationController

  caches_page :index

  def index
    @title = "PitsLamp Portfolio"
    @selected_page = "portfolio"

    @urls = Picture.urls
  end

end
