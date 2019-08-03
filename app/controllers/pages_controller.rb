# frozen_string_literal: true

class PagesController < ApplicationController
  before_action :require_login, except: :home

  def home
    @totp_uri = totp.provisioning_uri('han@han.com')
    qrcode = RQRCode::QRCode.new(@totp_uri)
    @svg = qrcode.as_svg(module_size: 4).html_safe
  end

  def secret_test; end
end
