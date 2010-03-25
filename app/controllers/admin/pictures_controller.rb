class Admin::PicturesController < Admin::BaseController
  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def create
    @picture = Picture.new(params[:picture])

    if @picture.save
      expire_page '/portfolio'
      expire_page '/home'
      redirect_to admin_pictures_path, :notice => 'Picture was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @picture = Picture.find(params[:id])

    if @picture.update_attributes(params[:picture])
      expire_page '/portfolio'
      expire_page '/home'
      redirect_to edit_admin_picture_path(@picture), :notice => 'Picture was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy

    redirect_to admin_pictures_path
  end
end
