class SessionsController < ApplicationController
	def create
		if authenticate(params[:name], params[:password])
			session[:logged_in] = true
			redirect_to '/overview'
		else
			flash[:error] = "Failed to sign in"
			redirect_to '/'
		end
	end

	def destroy
		session[:logged_in] = nil
		flash[:info] = "Successfully logged out"
		redirect_to '/'
	end
end
