class ContactsController < ApplicationController

	def new

	end
	def create 
		@user = User.find(session[:user_id])
		@user.update_attributes(contact_params)
		redirect_to new_location_path
	end
	
	def contact_params
 		params.permit(:contact_1_name, :contact_1_number, 
			:contact_2_name, :contact_2_number,
			:contact_3_name, :contact_3_number)
	end
end

