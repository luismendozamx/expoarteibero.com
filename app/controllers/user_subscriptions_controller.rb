class UserSubscriptionsController < ApplicationController
  before_action :set_user_subscription, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    redirect_to registro_path
  end

  def show
    respond_with(@user_subscription)
  end

  def new
    @user_subscription = UserSubscription.new
    redirect_to registro_path
  end

  def edit
  end

  def create
    @user_subscription = UserSubscription.new(user_subscription_params)
    @user_subscription.user_id = current_user.id
    @user_subscription.save
    flash[:notice] = "Se guardó la información correctamente"
    redirect_to registro_path
  end

  def update
    @user_subscription.update(user_subscription_params)
    flash[:notice] = "Se guardó la información correctamente"
    redirect_to registro_path
  end

  private
    def set_user_subscription
      @user_subscription = UserSubscription.find(params[:id])
    end

    def user_subscription_params
      params.require(:user_subscription).permit(:birth_date, :nationality, :address, :phone, :institution, :about, :status)
    end
end
