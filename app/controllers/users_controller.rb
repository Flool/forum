class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.all
  end
  
private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end