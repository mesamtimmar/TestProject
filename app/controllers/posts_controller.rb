class PostsController < ApplicationController
  
http_basic_authenticate_with :name => "dhh", :password => "secret", :except => [:index, :show]
 
 respond_to :html, :xml, :json


 #before_filter :authenticate

Hamzaaaa
#def authenticate
#render :text => 'before_filter'
#end

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    respond_with(@post)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

    respond_with(@post)
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new

    respond_with(@post)
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

    
      if @post.save
         flash[:notice] = "Post was successfully created."
        respond_with(@post)
      else
        respond_with(@post)
      end
    
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    
      if @post.update_attributes(params[:post])
        flash[:notice] = "Post was successfully updated."
        respond_with(@post)
      else
        respond_with(@post)
      end
   
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_with(@post)
   
  end
end
