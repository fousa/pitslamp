class PostsController < ApplicationController
  def index
    initialize_blog

    @posts = Post.blog.paginate(:page => params[:page], :per_page => 5)
  end

  def show
    initialize_blog

    @post    = Post.permalink(params[:id], admin?).first
    raise "Blog post not found" if @post.nil?
    
    @comment = Comment.new
  end

  private

  def initialize_blog
    @body_style = "post"
  end
end