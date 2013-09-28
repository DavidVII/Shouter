class FollowingRelationshipsController < ApplicationController
  def create
    current_user.follow(user)
    redirect_to user, notice: "You are now following #{user.username}."
  end

  def destroy
    current_user.unfollow(user)
    redirect_to user, notice: "You are no longer following #{user.username}."
  end

  private

  def user
    @_user ||= User.find(params[:user_id])
  end
end
