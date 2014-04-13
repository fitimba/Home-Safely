class User < ActiveRecord::Base
  
  def home?
  	true
  end

  def contact_numbers
  	[@user.contact_1_number, @user.contact_2_number, @user.contact_3_number]
  end
 
  attr_accessible :email,
  	:name, 
  	:password, 
  	:contact_1_name,  
  	:contact_1_number,
  	:contact_2_name,  
  	:contact_2_number,
  	:contact_3_name,  
  	:contact_3_number,
  	:latitude,
  	:longitude
end
