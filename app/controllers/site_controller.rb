class SiteController < ApplicationController

  def index
    @page = Page.home_page

    raise "This page is controller driven!" if @page.handled_by_controller?
  end

  def show
    @page = Page.page_with_permalink(params[:url])

    raise "This page is controller driven!" if @page.handled_by_controller?
  end

end
