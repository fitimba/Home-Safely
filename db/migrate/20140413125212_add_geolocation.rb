class AddGeolocation < ActiveRecord::Migration
 
	add_column :users, :email, :string
	add_column :users, :latitude, :string
	add_column :users, :longitude, :string
	add_column :users, :password, :string
 end
