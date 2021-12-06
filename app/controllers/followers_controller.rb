class FollowersController < ApplicationController
  before_action :set_user, only: %i[followers followings]
  def followers
    @followers = @user.followers
  end

  def followeds
    @followeds = @user.followeds
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

end
