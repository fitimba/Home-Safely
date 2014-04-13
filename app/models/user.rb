class User < ActiveRecord::Base
  
  def home?
  	true
  end

  def contact_numbers
  	[contact_1_number, contact_2_number, contact_3_number].select { |s| !s.blank? }
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
