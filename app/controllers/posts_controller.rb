class PostsController < ApplicationController
  def index
    @posts = Post.order(:created_at).paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @post    = Post.where(:permalink => params[:id]).first
    @comment = Comment.new
  end
end