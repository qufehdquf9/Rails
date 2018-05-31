class HomeController < ApplicationController
  #protect_from_forgery with: :exception
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post=Post.new
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.save
    
    redirect_to '/home/index'
  end
  
  def delete
    @post = Post.find(params[:post_id])
    @post.destroy
    
    redirect_to '/'
  end
  def edit
    @post = Post.find(params[:post_id])
  end
  
  def update
    @post = Post.find(params[:post_id])
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.save
    
    redirect_to '/'
  end
  
  def comment_create
    comment = Post.find(params[:p_id]).comments.create(content: params[:content])
    comment.save
    
    redirect_to '/'
  end
  
  def comment_destroy
    comment = Post.find(params[:p_id]).comments.find(params[:c_id])
    comment.destroy

    redirect_to '/'
  end
end
