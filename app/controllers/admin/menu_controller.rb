class Admin::MenuController < Admin::BaseController
  def show
    @pages = Page.in_menu
  end

  def update
    Page.order!(params[:menu_item])
    render :nothing => true
  end
end