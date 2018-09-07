class RegistrationsController < Devise::RegistrationsController 
    def sign_up_params 
    	devise_parameter_sanitizer.sanitize(:sign_up) 
    	params.require(:user).permit(:email, :password, profile_attributes: [:nombre, :apellido, :dinero_disponible]) 
	end
end