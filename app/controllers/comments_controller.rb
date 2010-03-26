class CommentsController < ApplicationController
  def create
    @post         = Post.permalink(params[:post_id], admin?).first
    @comment      = Comment.new(params[:comment].merge({ :post => @post }))

    if @comment.save
      redirect_to post_path(@post.permalink), :notice => "Succesvol toegevoegd!"
    else
      initialize_blog

      flash[:alert] = "Er deden zich fouten voor!"
      render "posts/show"
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    post = comment.post
    comment.destroy

    redirect_to post_path(post)
  end

  private

  def initialize_blog
    @body_style = "post"
  end
end
