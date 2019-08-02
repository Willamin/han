class SessionsController < ApplicationController
	def create
		if authenticate(params[:totp])
			session[:logged_in] = true
			redirect_to '/secret-test'
		else
			flash[:error] = "Failed to sign in"
			redirect_to '/'
		end
	end

	def destroy
		session[:logged_in] = nil
	end
end
