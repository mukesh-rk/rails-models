require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt
  attr_accessible :pwd, :uname
  
  pwd_hash = BCrypt::Password.create("#{:@pwd}")
		
end
