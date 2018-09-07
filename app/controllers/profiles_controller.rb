class ProfilesController < ApplicationController

	def new
		@profile = Profile.new 
	end

	def edit
		@profile = Profile.find(params[current_user.id])
	end

	def create
		@profile = current_user.profile.new(profile_params)
		@profile.save
		redirect_to @profile
	end

	def profile_params
		params.permit (nombre: params[:profile][:nombre], apellido: params[:profile][:apellido], dinero_disponible: params[:profile][:dinero_disponible])

end