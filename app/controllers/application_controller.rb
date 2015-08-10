class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def admin_user
    unless user_signed_in? && current_user.is_admin?
      flash[:notice] = "You are not authorized to see this page."
      redirect_to root_path # halts request cycle
    end
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :first_name, :last_name, :read_agreement, :password, :password_confirm) }
    end

end
