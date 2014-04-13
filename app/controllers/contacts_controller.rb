class ContactsController < ApplicationController

	def new

	end
	
	def create 
		@user = User.find(1)
		@user.contact_1_number = params[:contact_1_number]
		@user.contact_2_number = params[:contact_2_number]
		@user.contact_3_number = params[:contact_3_number]
		@user.save
		redirect_to new_location_path
	end
	
end

