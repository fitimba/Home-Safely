class NotificationsController < ApplicationController
	require 'twilio-ruby'
	TWILIO_SID = "AC22c6c05b514943d2b7e5a94bec9463f9"
	TWILIO_AUTH = '38e861bd029b5535d42c28af170656fc'

	def create
		@client = Twilio::REST::Client.new TWILIO_SID, TWILIO_AUTH
		@user = User.find(session[:user_id])
		@user.contact_numbers.each do |number|
			if @user.home?
				body = "#{@user.name} got home safely"
			else
				body = "#{@user.name} still isn't home. Maybe you should check up on them."
			end

			@client.account.messages.create(
  				:from => '+44 20 3322 1185',
  				:to => number,
  				:body => body
			)
		end
	end
end
