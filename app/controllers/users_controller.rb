class UsersController < ApplicationController

 def save_application
  @user = current_user
  @user.application_status = "sent"
  @user.save
  flash[:notice] = "¡Gracias! Tu inscripción se guardó correctamente. Pronto nos pondremos en contacto contigo."
  redirect_to root_path
 end

end
