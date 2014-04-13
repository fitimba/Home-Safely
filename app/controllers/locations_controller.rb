class LocationsController < ApplicationController

	def new

	end

	def create 
		@user = User.find(session[:user_id])
		@user.update_attributes(contact_params)
		redirect_to new_location_path
	end
	
	def contact_params
 		params.permit(:latitude, :longitude)
	end
end

