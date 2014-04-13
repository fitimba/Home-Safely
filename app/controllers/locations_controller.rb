class LocationsController < ApplicationController

	def new

	end

	def create 
		@user = User.find(1)
		@user.update_attributes(contact_params)
		redirect_to new_location_path
	end
	
	def contact_params
 		params.permit(:latitude, :longitude)
	end

	def home
	end
end

