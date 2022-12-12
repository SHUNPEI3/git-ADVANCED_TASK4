class RelationshipsController < ApplicationController
  def create
    user = User.find(params[:user_id])
    relationship = Relationship.new
    relationship.follower_id = current_user.id
    relationship.followed_id = user.id
    relationship.save
    redirect_to request.referer
  end
end
