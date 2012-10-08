class UsersController < ApplicationController
	#@user=User.new
	def reg
		@user=User.new()
	end
	
	def create
		@user=User.new(params[:user])
		puts "VVVVVVVVVVVVVVVVV          "+@user.uname
		if @user.save
			redirect_to "http://www.google.com"
		end 
	end

	def login
	end
	
	def regs
	end

end
