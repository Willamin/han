class ApplicationController < ActionController::Base
	def require_login
		return if logged_in?

		flash[:error] = "You must be logged in to access this section"
		redirect_to :root
	end

	helper_method :logged_in?
	def logged_in?
		session[:logged_in]
	end

	helper_method :totp
	def totp
		@totp ||= ROTP::TOTP.new(Rails.configuration.x.totp.seed, issuer: "Han")
	end

	def authenticate(username, password)
		return false unless username == Rails.configuration.x.username
		totp.verify(password)
	end
end
