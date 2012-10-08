class UsersController < ApplicationController
	#@user=User.new
	def reg
		@user = User.new(params[:user])
    if(request.post?)
      flash[:notice] = “Account Created Successfully”
      redirect_to "www.google.com"
    end
	end
	def login
	end
	def regs
		
	end
end
