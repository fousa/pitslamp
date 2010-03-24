class Admin::SortController < Admin::BaseController
  def show
    @pages = Page.active
  end
end