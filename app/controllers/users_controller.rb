class UsersController < ApplicationController

	def create
		@user = User.create(user_params)
		session[:user_id] = @user.id
		redirect_to new_contact_path
	end

	def user_params
		params.permit(:name, :contact_1_name, :contact_1_number, 
			:contact_2_name, :contact_2_number,
			:contact_3_name, :contact_3_number)
	end
end
