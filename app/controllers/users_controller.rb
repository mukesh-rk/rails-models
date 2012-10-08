class UsersController < ApplicationController
	#@user=User.new
	def reg
		$user=User.new()
		$user=params[:user]
		$pwd=$user.pwd
		$uname=$user.uname
		if $pwd
			$user.pwd=$user.hash(@pwd)
		end
	end
	def login
	end
	def regs
		
	end
end
