class UsersController < ApplicationController
	def reg
		@user=User.new()
	end
	
	def create
		@user=User.new(params[:user])
		if @user.save
			redirect_to "http://www.google.com"
		end 
	end

	def login
		@user1=User.new()
	end
	def auth
		user1=User.find_by_uname(params[:user][:uname])
		puts "AAAAAAAAAAAAAAAAAAAAAAAAAAA"
		if user1.pwd == params[:user][:pwd]
			redirect_to ("http://www.rubykitchen.in")
		end
	end

	def regs
	end

end


   