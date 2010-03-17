class SiteController < ApplicationController

  def index
    @page = Page.home_page
    initialize_page

    redirect_to "/#{@page.permalink}" if  @page.handled_by_controller?
  end

  def show
    @page = Page.page_with_permalink(params[:url])
    initialize_page

    raise "This page is controller driven!" if @page.handled_by_controller?
  end

  private

  def initialize_page
    @title         = "PitsLamp #{@page.title}"
    @selected_page = @page.permalink
  end

end
