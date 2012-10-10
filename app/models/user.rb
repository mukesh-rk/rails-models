require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt
  attr_accessible :pwd, :uname
  
  
  #attr_accessor :password
  before_save :hash
  def hash
    	pwd_hash= BCrypt::Password.create("#{pwd}")
  end 	
end
