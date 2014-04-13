class UsersController < ApplicationController

	def new
		@message = 'Sign up here'
	end

	def create
		@user = User.new
		@user.email = params[:email]
		@user.name = params[:name]
		@user.password = params[:password]
		@user.contact_1_name = params[:contact_1_name]
		@user.contact_2_name = params[:contact_2_name]
		@user.contact_3_name = params[:contact_3_name]
		@user.longitude = params[:longitude]
		@user.latitude = params[:latitude]
		@user.contact_1_number = params[:contact_1_number]
		@user.contact_2_number = params[:contact_2_number]
		@user.contact_3_number = params[:contact_3_number]
		@user.save
		session[:user_id] = @user.id
		redirect_to new_contact_path
	end

end
