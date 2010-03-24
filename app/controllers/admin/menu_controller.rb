class Admin::MenuController < Admin::BaseController
  def show
    @pages = Page.active
  end

  def update
    Page.order!(params[:menu_item])
    render :nothing => true
  end
end