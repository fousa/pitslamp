class ApplicationController < ActionController::Base
  protect_from_forgery

  helper :all

  helper_method :admin?

  private

  def authenticate
    authenticate_or_request_with_http_basic do |user, password|
      user == CONFIG["pitslamp"]["login"] && password == CONFIG["pitslamp"]["password"]
      session[:admin] = true
    end
  end

  def admin?
    session[:admin]
  end

end
