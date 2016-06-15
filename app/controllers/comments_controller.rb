class CommentsController < ApplicationController
	

http_basic_authenticate_with :name => "dhh", :password => "secret", :only => :destroy
 
  def index
    @post=Post.find(params[:post_id])
    @comments=@post.comments

  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    redirect_to post_path(@post)


     @post = Post.find(params[:post_id])
     # snipped for brevity

  end


  def destroy
    @post = Post.find(params[:post_id])
   # p '*'*200
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
end
