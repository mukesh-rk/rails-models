class UsersController < ApplicationController
	#@user=User.new
	def reg
		@user=User.new(params[:user])
		#puts @user
		@pwd=@user.pwd
		
	end
	def login
	end
	def regs
		
	end
end
