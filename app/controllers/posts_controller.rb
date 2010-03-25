class PostsController < ApplicationController
  def index
    initialize_blog

    @posts = Post.order(:created_at).paginate(:page => params[:page], :per_page => 5)
  end

  def show
    initialize_blog

    @post    = Post.where(:permalink => params[:id]).first
    @comment = Comment.new
  end

  def initialize_blog
    @body_style = "post"
  end
end