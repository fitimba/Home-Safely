class User < ActiveRecord::Base
  

  def home?
  	true
  end

  def contact_numbers
  	[@user.contact_1_number, @user.contact_2_number, @user.contact_3_number]
  end
  
end
