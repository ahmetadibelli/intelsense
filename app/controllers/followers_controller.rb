class FollowersController < ApplicationController
  before_action :set_user, only: %i[followers followings]
  def followers
    @followers = @user.followers
  end

  def followeds
    @followeds = @user.followeds
  end

  def create
    @following = Following.new(follower_id: params[:follower_id], followed_id: params[:followed_id])
    if @following.save
      { success: true, message: 'User Followed Successfully' }
    else
      { success: false, message: 'Action Failed' }
    end
  end

  def destroy
    @following = Following.find(params[:followed_id])
    if @following.destroy
      { success: true, message: 'User Unfollowed Successfully' }
    else
      { success: false, message: 'Action Failed' }
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

end
