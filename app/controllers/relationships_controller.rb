class RelationshipsController < ApplicationController
  def create
    current_user.follow(params[:id])
    @user = User.find(params[:id])
  end

  def destroy
    current_user.unfollow(params[:id])
    @user = User.find(params[:id])
  end
  
  def followings
    user = User.find(params[:user_id])
    @users = user.following_user
  end

  def followers
    user = User.find(params[:user_id])
    @users = user.follower_user
  end
end
