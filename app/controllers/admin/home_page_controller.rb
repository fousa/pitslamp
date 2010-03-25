class Admin::HomePageController < Admin::BaseController
  def show
    @pages = Page.in_menu
  end

  def update
    Page.find(params[:selected]).set_as_home_page!
    redirect_to admin_home_page_path, :notice => "Home page is set"
  end
end