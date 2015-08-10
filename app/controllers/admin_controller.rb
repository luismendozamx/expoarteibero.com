class AdminController < ApplicationController

  def index
    @user_count = User.count
    @registered_users = User.where(application_status: "sent")
    @registered_users_count = User.where(application_status: "sent").count
  end

  def show
    @user = User.find(params[:user_id])
    @art_pieces = ArtPiece.where(user_id: params[:user_id])
  end
end
