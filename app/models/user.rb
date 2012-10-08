require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt
  attr_accessible :pwd, :uname
  def hash(pwd)
  	@pwd_hash = BCrypt::Password.create("#{pwd}")
  	if $user.save
		redirect_to("http://www.google.com")
	end
  end 	
end
