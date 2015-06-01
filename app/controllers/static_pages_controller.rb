class StaticPagesController < ApplicationController
  def home
    if current_user
      redirect_to new_user_subscription_path
    else
      render :layout => 'home'
    end
  end

  def registro
    unless current_user
      @user = current_user
      redirect_to root_path
    end
  end
end
