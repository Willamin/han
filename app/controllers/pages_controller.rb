class PagesController < ApplicationController
	before_action :require_login, except: :home

	def home
		uri = totp.provisioning_uri("han@han.com")
		qrcode = RQRCode::QRCode.new(uri)
		@svg = qrcode.as_svg(module_size: 4).html_safe
	end

	def secret_test; end
end
