class GroupsController < ApplicationController 
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @posts = @group.posts.all
  end
end