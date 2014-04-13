class User < ActiveRecord::Base
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
