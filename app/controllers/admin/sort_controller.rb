class Admin::SortController < ApplicationController
  def show
    @pages = Page.active
  end
end