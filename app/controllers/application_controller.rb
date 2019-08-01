class ApplicationController < ActionController::Base
	def require_login
		return if logged_in?

		flash[:error] = "You must be logged in to access this section"
		redirect_to :root
	end

	def logged_in?
		false
	end
end
