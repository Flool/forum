class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  
  def index
  end

  def new
    @post_new = current_user.posts.new
  end

  def create
    @post = Post.new(content: params[:post][:content], title: params[:post][:title])
    @post.user = current_user
    if @post.save
      flash[:notice] = "Post created successfully."
      redirect_to post_path(@post.id)
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
  end 
  
  def destroy
    @post.delete
    redirect_to root_path
  end

  private
  def set_post
    @post = Post.find(params[:id])  
    @user = current_user
  end
end