class PortfoliosController < ApplicationController
  caches_page :index

  def index
    initialize_portfolio

    @urls = Picture.urls
  end

  private

  def initialize_portfolio
    @title         = "PitsLamp Portfolio"
    @selected_page = "portfolio"
    @body_style    = "portfolio"
  end
end
