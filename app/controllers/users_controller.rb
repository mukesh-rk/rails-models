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
		if user1.pwd == params[:user][:pwd]
			hashkey=Time.now.utc.to_s+user1.created_at.to_s
			createsession(hashkey)
		end
	end

	def createsession(arg)
		session[:id]=BCrypt::Password.create("#{arg}")
		redirect_to ("http://www.rubykitchen.in")
	end

	def regs
	end

end


   