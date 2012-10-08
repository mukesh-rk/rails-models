require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt
  attr_accessible :pwd, :uname
 
  end 	
end
