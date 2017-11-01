class JoinsController < ApplicationController
  def create
    join = Tagging.new(group_id: params[:group_id], user_id: params[:user_id])
    join.save
    redirect_to group_path(params[:group_id])
  end
end