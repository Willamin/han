class ApplicationController < ActionController::Base
	def require_login
		return if logged_in?

		flash[:error] = "You must be logged in to access this section"
		redirect_to :root
	end

	def logged_in?
		session[:logged_in]
	end

	helper_method :totp
	def totp
		@totp ||= ROTP::TOTP.new(Rails.configuration.x.totp.seed, issuer: "Han")
	end

	def authenticate(attempt)
		totp.verify(attempt)
	end
end
