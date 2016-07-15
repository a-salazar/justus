class WallMembershipsController < ApplicationController
  def create
    wall = Wall.find(params[:wall_id])
    current_user.walls << wall
    redirect_to wall
  end

  def destroy
    membership = Wall_Membership.find(params[:id])
    wall = membership.wall
    membership.destroy
    redirect_to wall

  end
end
