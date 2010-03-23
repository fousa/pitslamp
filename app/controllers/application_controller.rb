class ApplicationController < ActionController::Base

  protect_from_forgery

  helper :all

  helper_method :admin?

  before_filter :authenticate

  def authenticate
    authenticate_or_request_with_http_basic do |user, password|
      user == CONFIG["pitslamp"]["login"] && password == CONFIG["pitslamp"]["password"]
    end
  end

  def admin?
    false
  end

end
